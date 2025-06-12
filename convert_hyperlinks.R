# Link references don't work in HTML now because the chapter file names
# start with numbers. Let's fix that and try to render to both html and pdf.
library(stringr)
library(fs)

# Step 1: Rename .qmd files in the root directory that start with a number
qmd_files <- dir_ls(path = ".", glob = "*.qmd", type = "file")
files_to_rename <- qmd_files[str_detect(path_file(qmd_files), "^\\d")]

for (file_path in files_to_rename) {
  filename <- path_file(file_path)
  new_filename <- paste0("Chapter-", filename)
  new_path <- path(".", new_filename)
  file_move(file_path, new_path)
  message("Renamed: ", filename, " → ", new_filename)
}

# Step 2: Update content in all .qmd files (now prefixed)
all_qmd_files <- dir_ls(path = ".", glob = "Chapter-*.qmd", type = "file")

for (file in all_qmd_files) {
  lines <- readLines(file, warn = FALSE)
  original_lines <- lines
  
  # Update header anchors: {#004-Name} → {#Chapter-004-Name}
  lines <- str_replace_all(lines, "\\{#(\\d{3}-[A-Za-z0-9_-]+)\\}", "{#Chapter-\\1}")
  
  # Update link references: (#004-Name) → (#Chapter-004-Name)
  lines <- str_replace_all(lines, "\\(#(\\d{3}-[A-Za-z0-9_-]+)\\)", "(#Chapter-\\1)")
  
  # Save only if changes were made
  if (!identical(lines, original_lines)) {
    writeLines(lines, file)
    message("Updated links and headers in: ", path_file(file))
  }
}

# And update the chapter listings in the _quarto.yml
lines <- readLines("_quarto.yml")
original_lines <- lines

# Flag to know when we're inside the chapters list
inside_chapters <- FALSE

for (i in seq_along(lines)) {
  line <- lines[i]
  
  # Detect start of chapters block
  if (str_detect(line, "^\\s*chapters:\\s*$")) {
    inside_chapters <- TRUE
    next
  }
  
  # If inside chapters block and see a line starting with `- 0`, update it
  if (inside_chapters) {
    # If we hit a line that's not a chapter item, stop processing
    if (!str_detect(line, "^\\s*-\\s")) {
      inside_chapters <- FALSE
      next
    }
    
    # Update filenames starting with `0` and not already prefixed
    lines[i] <- str_replace(line, "(^\\s*-\\s)(0\\d{2,}-[A-Za-z0-9._-]+\\.qmd)", "\\1Chapter-\\2")
  }
}

# Write only if changed
if (!identical(lines, original_lines)) {
  writeLines(lines, "_quarto.yml")
  message("Updated chapter filenames in _quarto.yml")
} else {
  message("No changes made to _quarto.yml")
}