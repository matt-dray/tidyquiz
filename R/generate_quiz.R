#' @title Regenerate Quiz Content
#'
#' @description Re-render and re-run the R Markdown file for the tidyverse quiz
#' @param filepath Character string of file path to R Markdown file
#' @export
#' @examples
#' \dontrun{
#' generate_quiz()
#' }

generate_quiz <- function(filepath = "quiz/tidy.Rmd") {

  # Re-render the Rmd file from the filepath to HTML
  rmarkdown::render(input = filepath)

  # Run the file
  rmarkdown::run(file = filepath)

}
