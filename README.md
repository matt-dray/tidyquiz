# tidyquiz

<!-- badges: start -->
[![Project Status: Concept – Minimal or no implementation has been done yet, or the repository is only intended to be a limited example, demo, or proof-of-concept.](https://www.repostatus.org/badges/latest/concept.svg)](https://www.repostatus.org/#concept)
[![](https://img.shields.io/badge/Shiny-shinyapps.io-blue?style=flat&labelColor=white&logo=RStudio&logoColor=blue)](mattdray.shinyapps.io/tidyquiz/)
[![Blog post](https://img.shields.io/badge/rostrum.blog-post-008900?labelColor=000000&logo=data%3Aimage%2Fgif%3Bbase64%2CR0lGODlhEAAQAPEAAAAAABWCBAAAAAAAACH5BAlkAAIAIf8LTkVUU0NBUEUyLjADAQAAACwAAAAAEAAQAAAC55QkISIiEoQQQgghRBBCiCAIgiAIgiAIQiAIgSAIgiAIQiAIgRAEQiAQBAQCgUAQEAQEgYAgIAgIBAKBQBAQCAKBQEAgCAgEAoFAIAgEBAKBIBAQCAQCgUAgEAgCgUBAICAgICAgIBAgEBAgEBAgEBAgECAgICAgECAQIBAQIBAgECAgICAgICAgECAQECAQICAgICAgICAgEBAgEBAgEBAgICAgICAgECAQIBAQIBAgECAgICAgIBAgECAQECAQIBAgICAgIBAgIBAgEBAgECAgECAgICAgICAgECAgECAgQIAAAQIKAAAh%2BQQJZAACACwAAAAAEAAQAAAC55QkIiESIoQQQgghhAhCBCEIgiAIgiAIQiAIgSAIgiAIQiAIgRAEQiAQBAQCgUAQEAQEgYAgIAgIBAKBQBAQCAKBQEAgCAgEAoFAIAgEBAKBIBAQCAQCgUAgEAgCgUBAICAgICAgIBAgEBAgEBAgEBAgECAgICAgECAQIBAQIBAgECAgICAgICAgECAQECAQICAgICAgICAgEBAgEBAgEBAgICAgICAgECAQIBAQIBAgECAgICAgIBAgECAQECAQIBAgICAgIBAgIBAgEBAgECAgECAgICAgICAgECAgECAgQIAAAQIKAAA7)](https://www.rostrum.blog/2019/03/18/tidyverse-quiz/)
<!-- badges: end -->

![Answering a question and geting a new one](https://raw.githubusercontent.com/matt-dray/tidyverse-quiz/master/images/tidyverse_quiz.gif)

## What?

Can you match the tidyverse function to the package name? A multiple choice quiz. 

A silly thing made with the [{learnr}](https://rstudio.github.io/learnr/) package, the [tidyverse](https://www.tidyverse.org/) and [{pacman}](https://cran.r-project.org/web/packages/pacman/vignettes/Introduction_to_pacman.html), inspired by frustrations of [Ryan Timpe](https://twitter.com/ryantimpe/status/1102666979909996545), [Daniel McNichol](https://twitter.com/dnlmc/status/1105973896828866560), and others I'm sure.

## How to

You can [access the app online](https://mattdray.shinyapps.io/tidyquiz/), hosted with a free shinyapps.io account.

Or install locally and run it with the following commands:

1. `install.packages("learnr")` to install {learnr} from CRAN
1. `remotes::install_github("matt-dray/tidyquiz")` to install this package from GitHub
1. `library(tidyquiz)` to load the package
1. `learnr::run_tutorial("tidy", package = "tidyquiz")` to open in your browser

## Notes

### Do I have to install loads of packages for this to work?

Yes, if installing locally. This thing works on the fly. It fetches the tidyverse packages and creates questions and answers whenever you run `generate_quiz()`. This means you should be prepared for all the tidyverse packages to be downloaded to your machine. On the plus side, functions presented to you in the quiz will always be current.

The list of packages can be found in `tidyverse::tidyverse_packages()`. At time of writing (2019-03-17) the packages are:

```
"broom"     "cli"         "crayon"   "dplyr"     "dbplyr"      "forcats"
"ggplot2"   "haven"       "hms"      "httr"      "jsonlite"    "lubridate"
"magrittr"  "modelr"      "purrr"    "readr"     "readxl"      "reprex"
"rlang"     "rstudioapi"  "rvest"    "stringr"   "tibble"      "tidyr"      
"xml2"      "tidyverse"  
```

### What about functions that mask other functions?

There's only ever one correct answer from the four presented. If you are presented with a function that exists in multiple packages, the answer set will include one package it definitely exists in and three it definitely doesn't exist in.
