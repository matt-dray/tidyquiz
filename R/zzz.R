# Startup message

.onAttach <- function(libname, pkgname) {
  packageStartupMessage(
    'Run `learnr::run_tutorial("tidy", package = "tidyquiz")` to start the quiz'
  )
}
