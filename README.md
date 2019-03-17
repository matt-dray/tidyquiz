# Tidyverse functions quiz

_Very much in development_

![](https://raw.githubusercontent.com/matt-dray/tidyverse-quiz/master/images/tidyverse_quiz.gif)

## What?

Can you match the tidyverse function to the package name? A multiple choice quiz. 

A silly thing made with the [{learnr}](https://rstudio.github.io/learnr/) package, the [tidyverse](https://www.tidyverse.org/) and [{pacman}](https://cran.r-project.org/web/packages/pacman/vignettes/Introduction_to_pacman.html), inspired by frustrations of [Ryan Timpe](https://twitter.com/ryantimpe/status/1102666979909996545), [Daniel McNichol](https://twitter.com/dnlmc/status/1105973896828866560), and others I'm sure.

Install the package 

## How to

Open the quiz:

1. `remotes::install_github("matt-dray/tidyquiz")`
1. `library(tidyquiz)`
1. `learnr::run_tutorial("tidy", package = "tidyquiz")` to open in your browser
1. Choose a seed to ranomise the question and answers and hit 'Go'

Get a new question:

1. Click 'Start Over' in the menu bar
2. Choose a new seed
1. Hit 'Go'

## Notes

### Do I have to install loads of packages for this to work?

Yes. This thing works on the fly. It fetches the tidyverse packages and creates questions and answers whenever you run `generate_quiz()`. This means you should be prepared for all the tidyverse packages to be downloaded to your machine. On the plus side, functions presented to you in the quiz will always be current.

The list of packages can be found in `tidyverse::tidyverse_packages()`. At time of writing (2019-03-14) the packages are:

```
"broom"     "cli"         "crayon"   "dplyr"     "dbplyr"      "forcats"
"ggplot2"   "haven"       "hms"      "httr"      "jsonlite"    "lubridate"
"magrittr"  "modelr"      "purrr"    "readr"     "readxl"      "reprex"
"rlang"     "rstudioapi"  "rvest"    "stringr"   "tibble"      "tidyr"      
"xml2"      "tidyverse"  
```

### What about functions that mask other functions?

There's only ever one correct answer from the four presented. If you are presented with a function that exists in multiple packages, the answer set will include one package it definitely exists in and three it definitely doesn't exist in.
