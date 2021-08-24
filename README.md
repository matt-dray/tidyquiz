# tidyquiz

<!-- badges: start -->
[![Project Status: Concept – Minimal or no implementation has been done yet, or the repository is only intended to be a limited example, demo, or proof-of-concept.](https://www.repostatus.org/badges/latest/concept.svg)](https://www.repostatus.org/#concept)
![](https://img.shields.io/badge/Shiny-no_longer_hosted-blue?style=flat&labelColor=white&logo=RStudio&logoColor=blue)
[![Blog post](https://img.shields.io/badge/rostrum.blog-post-008900?labelColor=000000&logo=data%3Aimage%2Fgif%3Bbase64%2CR0lGODlhEAAQAPEAAAAAABWCBAAAAAAAACH5BAlkAAIAIf8LTkVUU0NBUEUyLjADAQAAACwAAAAAEAAQAAAC55QkISIiEoQQQgghRBBCiCAIgiAIgiAIQiAIgSAIgiAIQiAIgRAEQiAQBAQCgUAQEAQEgYAgIAgIBAKBQBAQCAKBQEAgCAgEAoFAIAgEBAKBIBAQCAQCgUAgEAgCgUBAICAgICAgIBAgEBAgEBAgEBAgECAgICAgECAQIBAQIBAgECAgICAgICAgECAQECAQICAgICAgICAgEBAgEBAgEBAgICAgICAgECAQIBAQIBAgECAgICAgIBAgECAQECAQIBAgICAgIBAgIBAgEBAgECAgECAgICAgICAgECAgECAgQIAAAQIKAAAh%2BQQJZAACACwAAAAAEAAQAAAC55QkIiESIoQQQgghhAhCBCEIgiAIgiAIQiAIgSAIgiAIQiAIgRAEQiAQBAQCgUAQEAQEgYAgIAgIBAKBQBAQCAKBQEAgCAgEAoFAIAgEBAKBIBAQCAQCgUAgEAgCgUBAICAgICAgIBAgEBAgEBAgEBAgECAgICAgECAQIBAQIBAgECAgICAgICAgECAQECAQICAgICAgICAgEBAgEBAgEBAgICAgICAgECAQIBAQIBAgECAgICAgIBAgECAQECAQIBAgICAgIBAgIBAgEBAgECAgECAgICAgICAgECAgECAgQIAAAQIKAAA7)](https://www.rostrum.blog/2019/03/18/tidyverse-quiz/)
<!-- badges: end -->

Can you match the tidyverse function to the package name? A multiple choice quiz hacked together with [{learnr}](https://rstudio.github.io/learnr/).

![Answering a question and geting a new one](https://raw.githubusercontent.com/matt-dray/tidyverse-quiz/master/images/tidyverse_quiz.gif)

## What?

Can you always remember which tidyverse function comes from which tidyverse package? Inspired by frustrations of [Ryan Timpe](https://twitter.com/ryantimpe/status/1102666979909996545), [Daniel McNichol](https://twitter.com/dnlmc/status/1105973896828866560), and others I'm sure.

[The {learnr} package](https://rstudio.github.io/learnr/) lets you build quizzes, obstensibly for learning about R. I wondered if you could use it to serve a randomised question about what function belongs to which [tidyverse](https://www.tidyverse.org/) package. It's a bit hacky: you have to click the 'get question' button to begin and then 'start over' each time you want a new question.

You can read [the accompanying blog post](https://www.rostrum.blog/2019/03/18/tidyverse-quiz/) for more info on how it was built.

## How to run

Install the package and run the app with the following commands:

1. `install.packages(c("remotes", "pacman", "tidyverse", "learnr"))` to install {learnr} from CRAN (beware: this will install _a lot_ of packages)
1. `remotes::install_github("matt-dray/tidyquiz")` to install this package from GitHub
1. `learnr::run_tutorial("tidy", package = "tidyquiz")` to open in your browser

The app is no longer hosted online.

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
