# Startup message

.onAttach <- function(libname, pkgname) {
  packageStartupMessage(
    "Run `tidyquiz::generate_quiz()` to regenerate and run the quiz"
  )
}
