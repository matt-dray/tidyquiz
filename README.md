# Tidyverse functions quiz

_Very much in development_

![](https://raw.githubusercontent.com/matt-dray/tidyverse-quiz/master/images/tidyverse_quiz.gif)

## What?

Can you match the tidyverse function to the package name? A multiple choice quiz. 

A silly thing made with the [{learnr}](https://rstudio.github.io/learnr/) package, the [tidyverse](https://www.tidyverse.org/) and [{pacman}](https://cran.r-project.org/web/packages/pacman/vignettes/Introduction_to_pacman.html), inspired by frustrations of [Ryan Timpe](https://twitter.com/ryantimpe/status/1102666979909996545), [Daniel McNichol](https://twitter.com/dnlmc/status/1105973896828866560), and others I'm sure.

This repo is in the form of a package so the quiz can be generated (and regenerated) by the user locally.

## Install and run

There are a few ways to do it, but the preferred method is:

1. Download the repo at the command line with `git clone https://github.com/matt-dray/tidyquiz.git`
1. Open the `tidyquiz.Rproj` file to open the project with RStudio
1. Run `source("R/generate_quiz.R")` and then `generate_quiz()` to generate and open the quiz in-browser

You can re-run `generate_quiz()` for a new set of questions.

## Notes

### What's happening?

The line `source("R/generate_quiz.R")` adds to the global environment the function that will generate the quiz. When you execute `generate_quiz()` you're rendering the R Markdown file `/quiz/tidy.Rmd` -- which contains the multiple-choice questions -- and running it in your browser. Re-running `generate_quiz()` will re-render and re-run it.

### Dependencies

This thing works on the fly. It fetches the tidyverse packages and creates questions and answers whenever you run `generate_quiz()`. This means you should be prepared for the tidyverse packages to be downloaded to your machine. On the plus side, functions presented to you in the quiz will always be current.

The list of packages can be found in `tidyverse::tidyverse_packages()`. At time of writing (2019-03-14) the packages are:

```
"broom"     "cli"         "crayon"
"dplyr"     "dbplyr"      "forcats"
"ggplot2"   "haven"       "hms"
"httr"      "jsonlite"    "lubridate"
"magrittr"  "modelr"      "purrr"
"readr"     "readxl"      "reprex"
"rlang"     "rstudioapi"  "rvest"
"stringr"   "tibble"      "tidyr"      
"xml2"      "tidyverse"  
```

### Masking

There's only ever one correct answer from the four presented. If you are presented with a function that exists in multiple packages, the answer set will include one package it definitely exists in and three it definitely doesn't exist in.
