# This script was used to add chapter navigation attributes to each .qmd file
# and modify H1 headings to include a chapter tag

library(stringr)
library(fs)

# Get all .qmd files in the current directory
qmd_files <- list.files(pattern = "\\.qmd$")

for (file in qmd_files) {
  lines <- readLines(file, warn = FALSE)
  original_lines <- lines
  file_base <- tools::file_path_sans_ext(basename(file))  # like, "chapter-1"
  
  # Find first level-1 heading (nothing can be before the H1 heading)
  heading_line_index <- which(str_detect(lines, "^# "))
  if (length(heading_line_index) > 0) {
    first_heading <- lines[heading_line_index[1]]
    
    # Check for existing attribute block
    has_id <- str_detect(first_heading, "\\{#.*\\}")
    has_unnumbered <- str_detect(first_heading, "\\{\\.unnumbered\\}")
    
    if (has_id && has_unnumbered) {
      # Combine both attributes into one block
      lines[heading_line_index[1]] <- str_replace(first_heading,
                                                  "\\{\\.unnumbered\\}\\s*\\{#(.*?)\\}",
                                                  paste0("{.unnumbered #\\1}")
      )
    } else if (has_unnumbered && !has_id) {
      # Add ID inside existing unnumbered block
      lines[heading_line_index[1]] <- str_replace(
        first_heading,
        "\\{\\.unnumbered\\}",
        paste0("{.unnumbered #", file_base, "}")
      )
    } else if (!has_id) {
      # No attributes at all — just add ID
      lines[heading_line_index[1]] <- paste0(first_heading, " {#", file_base, "}")
    }
  }
  
  # Step 2: Replace [text](filename.qmd) with [text](#filename)
  lines <- str_replace_all(lines, "\\[([^\\]]+)\\]\\(([^)]+)\\.qmd\\)", "[\\1](#\\2)")
  
  # Write back only if changed
  if (!identical(lines, original_lines)) {
    message("Updated: ", file)
    writeLines(lines, file)
  }
}


# Ah! Link references don't work in HTML now because the chapter file names
# start with numbers. Let's fix that and try to render to both html and pdf.


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
    
    # Update file names starting with `0` and not already prefixed
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

#####
# Adding some more utility code that, when run, will output 
# Chapters to the console to be copy and pasted into the .yml
# Un-comment the whole block and run only if needed

# # List all .qmd files in the current directory that start with "Chapter"
# chapter_files <- list.files(pattern = "^Chapter.*\\.qmd$")
# 
# # Optional: sort alphabetically
# chapter_files <- sort(chapter_files)
# 
# # Format for YAML
# chapter_yaml_lines <- paste0("    - ", chapter_files)
# 
# # Add book and chapters section
# yaml_output <- c(
#   "book:",
#   "  chapters:",
#   chapter_yaml_lines
# )
# 
# # Print the YAML block to copy/paste
# cat(paste(yaml_output, collapse = "\n"))