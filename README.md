# Tidyverse functions quiz

_Very much in development_

![](https://raw.githubusercontent.com/matt-dray/tidyverse-quiz/master/images/tidyverse_quiz.gif)

## What?

Can you match the tidyverse function to the package name? A multiple choice quiz. 

A silly thing made with the [{learnr}](https://rstudio.github.io/learnr/) package, the [tidyverse](https://www.tidyverse.org/) and [{pacman}](https://cran.r-project.org/web/packages/pacman/vignettes/Introduction_to_pacman.html), inspired by frustrations of [Ryan Timpe](https://twitter.com/ryantimpe/status/1102666979909996545), [Daniel McNichol](https://twitter.com/dnlmc/status/1105973896828866560), and others I'm sure.

This repo is in the form of a package so the quiz can be generated (and regenerated) by the user locally.

## Install and run

1. Install the package with `remotes::install_github("matt-dray/tidyquiz")`
1. Call the package with `library(tidyquiz)`
1. Run `tidyquiz::generate_quiz()` to generate a question set and open the quiz in your browser question set (re-run for a new question set)

## Notes

### Dependencies

This thing works on the fly. It fetches the tidyverse packages and creates questions and answers whenever you run `tidyquiz::generate_quiz()`. This means you should be prepared for the tidyverse packages to be downloaded to your machine. On the plus side, functions presented to you in the quiz will always be current.

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

There's only ever one correct answer from the four presented. If you are presented with a function that exists in multiple packages, the answer set will include one package it definitely exists in and three it definitely doesn't. 
