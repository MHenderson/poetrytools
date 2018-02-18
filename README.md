
<!-- README.md is generated from README.Rmd. Please edit that file -->
poetrytools
===========

The goal of poetrytools is to ...

-   Performs [prosodic](https://en.wikipedia.org/wiki/Prosody_%28linguistics%29) analysis of poetry.
-   Estimates rhyme scheme and metre using CMUDict, compares them against common forms using [Levenshtein distance](https://en.wikipedia.org/wiki/Levenshtein_distance), and combines the results to guess the form of the poem.
-   Contains a `rhymes` function that is faster than any other I have found.
-   Contributions & pull requests welcome.

Installation
------------

Requirements
------------

-   Python 2.7 or Python 3
-   python-Levenshtein==0.12.0

Install with `python setup.py install`

You can install poetrytools from github with:

``` r
# install.packages("devtools")
devtools::install_github("MHenderson/poetrytools")
```

Example
-------

This is a basic example which shows you how to solve a common problem:

``` r
library(poetrytools)
rhymes('show', 'hello')
#> [1] TRUE
```

``` r
haiku <- "savannah dust trails
 whistling thorn hovers above
 hungry giraffe grows"

poem <- tokenize(haiku) # need to tokenize the poem first
scanscion(poem)
#> [[1]]
#> [1] "010" "1"   "1"  
#> 
#> [[2]]
#> [1] "10" "1"  "10" "01"
#> 
#> [[3]]
#> [1] "10" "01" "1"
```

``` r
guess_form(poem)
#> [1] "haiku"
```

``` r
limerick <- "The limerick packs laughs anatomical
 Into space that is quite economical.
 But the good ones I've seen
 So seldom are clean
And the clean ones so seldom are comical."

poem <- tokenize(limerick)
guess_form(poem, verbose = TRUE)
#> [1] "limerick"
```

Notes
-----

-   For various reasons this library currently only works for short poems; the longer the poem is, the more inaccurate it gets.
-   CMUDict is included as a JSON file in order to avoid importing the behemoth that is NLTK.
