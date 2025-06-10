# This script was used to add chapter navigation attributes to each .qmd file
# and modify H1 headings to include a chapter tag

library(stringr)

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
