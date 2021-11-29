
<!-- README.md is generated from README.Rmd. Please edit that file -->

# aoc

<!-- badges: start -->
<!-- badges: end -->

aoc provides [usethis](https://usethis.r-lib.org/)-style functions for
[Advent of Code](https://adventofcode.com) puzzles. This package only
downloads content from the Advent of Code site.

## Installation

You can install the development version of aoc from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("tjmahr/aoc")
```

## Functionality

aoc assumes that you are working inside an R package. By default, it
assumes the package is named `adventofcodeXX` where XX are the last two
digits of the year. For example, `adventofcode20` would be the package
for 2020.

From this setup, aoc will automate a number of tasks. `use_day()` is a
[usethis](https://usethis.r-lib.org/)-style function to create
placeholder files for each day.

`use_day(day = 1)` does the following tasks:

-   on first run, creates `R/data-solutions.R`
    -   a file for storing solutions
-   creates `R/day01.R`
    -   puts the puzzle description into a roxygen documentation block
    -   creates placeholder functions for the solutions to day 1
-   creates `tests/testthat/test-day01.R`
    -   a unit test for day (useful for the example in the puzzle
        description) in `tests/testthat/test-day01.R`
-   creates `inst/input01.txt`
    -   a file to hold the input for day 1
-   creates `inst/run-day01.R`
    -   a file to contain the solution for day 1

``` r
aoc::use_day(1, year = 2020)
#> √ Writing 'R/data-solutions.R'
#> * Modify 'R/data-solutions.R'
#> Executing: pandoc -t markdown -o 
#> "C:\Users\trist\AppData\Local\Temp\RtmpiYf4Vi\file42a83cf05e25.markdown" 
#> ">C:\Users\trist\AppData\Local\Temp\RtmpiYf4Vi\file42a83cf05e25.html"
#> √ Writing 'R/day01.R'
#> * Modify 'R/day01.R'
#> ● Write your solution code here
#> ● Once you unlock Part Two, update the Roxygen block with the description
#> √ Writing 'inst/input01.txt'
#> * Modify 'inst/input01.txt'
#> ● Copy your problem input into this file
#> √ Writing 'tests/testthat/test-day01.R'
#> * Modify 'tests/testthat/test-day01.R'
#> ● Write unit tests using the examples from the problem description
#> √ Writing 'inst/run-day01.R'
#> * Modify 'inst/run-day01.R'
#> ● Run your solution on the input here. Once it works, update R/data-solutions.R
```

`R/data-solutions.R` is where we store our solutions:

    #' Advent of Code 2020 solutions
    #' @export
    aoc_solutions <- list(
      day01a = NA,
      day01b = NA,
      day02a = NA,
      day02b = NA,
      day03a = NA,
      day03b = NA,
      day04a = NA,
      day04b = NA,
      day05a = NA,
      day05b = NA,
      day06a = NA,
      day06b = NA,
      day07a = NA,
      day07b = NA,
      day08a = NA,
      day08b = NA,
      day09a = NA,
      day09b = NA,
      day10a = NA,
      day10b = NA,
      day11a = NA,
      day11b = NA,
      day12a = NA,
      day12b = NA,
      day13a = NA,
      day13b = NA,
      day14a = NA,
      day14b = NA,
      day15a = NA,
      day15b = NA,
      day16a = NA,
      day16b = NA,
      day17a = NA,
      day17b = NA,
      day18a = NA,
      day18b = NA,
      day19a = NA,
      day19b = NA,
      day20a = NA,
      day20b = NA,
      day21a = NA,
      day21b = NA,
      day22a = NA,
      day22b = NA,
      day23a = NA,
      day23b = NA,
      day24a = NA,
      day24b = NA,
      day25a = NA,
      day25b = NA
    )

`inst/input01.txt` is an empty file for our input data. We have to paste
in our puzzle input here.

The R script for `R/day01.R` provides the puzzle description for part 1,
function stubs for part 1 `f01a()` and part 2 `f01b()`. I also like to
make the example data into a function for unit tests or code examples,
so there is a stub for `example_data_01()`.

    #' Day 01: Report Repair
    #'
    #' [Report Repair](https://adventofcode.com/2020/day/1)
    #'
    #' @name day01
    #' @rdname day01
    #' @details
    #'
    #' **Part One**
    #'
    #' After saving Christmas [five years in a row](/events), you\'ve decided
    #' to take a vacation at a nice resort on a tropical island.
    #' [Surely]{title="WHAT COULD GO WRONG"}, Christmas will go on without you.
    #' 
    #' The tropical island has its own currency and is entirely cash-only. The
    #' gold coins used there have a little picture of a starfish; the locals
    #' just call them *stars*. None of the currency exchanges seem to have
    #' heard of them, but somehow, you\'ll need to find fifty of these coins by
    #' the time you arrive so you can pay the deposit on your room.
    #' 
    #' To save your vacation, you need to get all *fifty stars* by December
    #' 25th.
    #' 
    #' Collect stars by solving puzzles. Two puzzles will be made available on
    #' each day in the Advent calendar; the second puzzle is unlocked when you
    #' complete the first. Each puzzle grants *one star*. Good luck!
    #' 
    #' Before you leave, the Elves in accounting just need you to fix your
    #' *expense report* (your puzzle input); apparently, something isn\'t quite
    #' adding up.
    #' 
    #' Specifically, they need you to *find the two entries that sum to `2020`*
    #' and then multiply those two numbers together.
    #' 
    #' For example, suppose your expense report contained the following:
    #' 
    #'     1721
    #'     979
    #'     366
    #'     299
    #'     675
    #'     1456
    #' 
    #' In this list, the two entries that sum to `2020` are `1721` and `299`.
    #' Multiplying them together produces `1721 * 299 = 514579`, so the correct
    #' answer is `514579`.
    #' 
    #' Of course, your expense report is much larger. *Find the two entries
    #' that sum to `2020`; what do you get if you multiply them together?*
    #'
    #' **Part Two**
    #'
    #' *(Use have to manually add this yourself.)*
    #'
    #' *(Try using `convert_clipboard_html_to_roxygen_md()`)*
    #'
    #' @param x some data
    #' @return For Part One, `f01a(x)` returns .... For Part Two,
    #'   `f01b(x)` returns ....
    #' @export
    #' @examples
    #' f01a(example_data_01())
    #' f01b()
    f01a <- function(x) {

    }


    #' @rdname day01
    #' @export
    f01b <- function(x) {

    }


    f01_helper <- function(x) {

    }


    #' @param example Which example data to use (by position or name). Defaults to
    #'   1.
    #' @rdname day01
    #' @export
    example_data_01 <- function(example = 1) {
      l <- list(
        a = c(

        )
      )
      l[[example]]
    }

`tests/testthat/test-day01.R` is a placeholder for file unit tests. It’s
a good place work through the examples in the puzzle description.

    test_that("multiplication works", {
      expect_equal(2 * 2, 4)
    })

Once we have developed a solution for the example input, we can test our
official input by running the code in `inst/run-day01.R`. The final two
lines provide code to validate the solutions that we store in
`R/data-solutions.R`.

    library(adventofcode20)
    x <- readLines("./inst/input01.txt")

    p1 <- f01a(x)
    p2 <- f01b(x)

    stopifnot(p1 == aoc_solutions$day01a)
    stopifnot(p2 == aoc_solutions$day01b)

### Default values for `use_day()`

We can tell aoc which year to use by using `options()`.

``` r
options(aoc.year = 2017)
aoc::use_day(3)
#> Executing: pandoc -t markdown -o "C:\Users\trist\AppData\Local\Temp\RtmpqWcDtg\file37c020e43479.markdown" "C:\Users\trist\AppData\Local\Temp\RtmpqWcDtg\file37c020e43479.html"
#> v Writing 'R/day03.R'
#> <U+25CF> Write your solution code here
#> <U+25CF> Once you unlock Part Two, update the Roxygen block with the description
#> v Writing 'inst/input03.txt'
#> <U+25CF> Copy your problem input into this file
#> v Writing 'tests/testthat/test-day03.R'
#> * Edit 'tests/testthat/test-day03.R'
#> <U+25CF> Write unit tests using the examples from the problem description
#> v Writing 'inst/run-day03.R'
#> <U+25CF> Run your solution on the input here. Once it works, update R/data-solutions.R
```

If we look at the first lines of `R/day03.R`, we can see the correct URL
used.

    #' Day 03: Spiral Memory
    #'
    #' [Spiral Memory](https://adventofcode.com/2017/day/3)
    #'
    #' @name day03
    #' @rdname day03
    [... truncated ...]

We can also tell aoc which package name to use for our project using
`options()`.

``` r
options(aoc.package = "awesomeadvent2017")
aoc::use_day(4)
#> Executing: pandoc -t markdown -o "C:\Users\trist\AppData\Local\Temp\RtmpqWcDtg\file37c073b72438.markdown" "C:\Users\trist\AppData\Local\Temp\RtmpqWcDtg\file37c073b72438.html"
#> v Writing 'R/day04.R'
#> <U+25CF> Write your solution code here
#> <U+25CF> Once you unlock Part Two, update the Roxygen block with the description
#> v Writing 'inst/input04.txt'
#> <U+25CF> Copy your problem input into this file
#> v Writing 'tests/testthat/test-day04.R'
#> * Edit 'tests/testthat/test-day04.R'
#> <U+25CF> Write unit tests using the examples from the problem description
#> v Writing 'inst/run-day04.R'
#> <U+25CF> Run your solution on the input here. Once it works, update R/data-solutions.R
```

And here the correct name appears in the `library()` call.

    library(awesomeadvent2017)
    x <- readLines("./inst/input04.txt")

    p1 <- f04a(x)
    p2 <- f04b(x)

    [... truncated ...]

We can set these permanently for an Advent of Code package by editing
the package’s `.Rprofile`:

``` r
usethis::edit_r_profile(scope = "project")
# add in things like `options(aoc.year = 2017)`
```

### Advanced: Using a user cookie

If you know how to retrieve the cookie for your Advent of Code user, you
can use this cookie to download your puzzle input. Store the cookie in
file named `.aoccookie`. Then `use_day()` will automatically use this
cookie when downloading puzzle input.

For these demos, I hid my cookie by renaming the file. If I unrename the
file and download the day 7 files, I can preview the lines of the input
file.

``` r
file.rename(".xaoccookie", ".aoccookie")
#> [1] TRUE

aoc::use_day(7)
#> downloading puzzle html using .aoccookie
#> Executing: pandoc -t markdown -o "C:\Users\trist\AppData\Local\Temp\RtmpqWcDtg\file37c03e086b72.markdown" "C:\Users\trist\AppData\Local\Temp\RtmpqWcDtg\file37c03e086b72.html"
#> v Writing 'R/day07.R'
#> <U+25CF> Write your solution code here
#> <U+25CF> Once you unlock Part Two, update the Roxygen block with the description
#> downloading puzzle input using .aoccookie
#> v Writing 'inst/input07.txt'
#> <U+25CF> Copy your problem input into this file
#> v Writing 'tests/testthat/test-day07.R'
#> * Edit 'tests/testthat/test-day07.R'
#> <U+25CF> Write unit tests using the examples from the problem description
#> v Writing 'inst/run-day07.R'
#> <U+25CF> Run your solution on the input here. Once it works, update R/data-solutions.R

writeLines(head(readLines("inst/input07.txt")))
#> uglvj (99) -> ymfjt, gkpgf
#> vvwrg (51)
#> qrpgt (5)
#> qhqbqj (55)
#> taxdaf (23)
#> zbbdyc (81)
```

The other advantage of a user cookie is that after solving part 1 of a
day, we can download part 2 as a roxygen2 block. By default, this block
is copied to the clipboard, but for this demo, I have to disable it.

``` r
aoc::download_part2_to_roxygen_md(day = 7, clip = FALSE)
downloading puzzle html using .aoccookie
Executing: pandoc -t markdown -o "C:\Users\trist\AppData\Local\Temp\RtmpqWcDtg\file37c01a3b3e23.markdown" "C:\Users\trist\AppData\Local\Temp\RtmpqWcDtg\file37c01a3b3e23.html"
#' **Part Two**
#' The programs explain the situation: they can\'t get down. Rather, they
#' *could* get down, if they weren\'t expending all of their energy trying
#' to keep the tower balanced. Apparently, one program has the *wrong
#' weight*, and until it\'s fixed, they\'re stuck here.
#' 
#' For any program holding a disc, each program standing on that disc forms
#' a sub-tower. Each of those sub-towers are supposed to be the same
#' weight, or the disc itself isn\'t balanced. The weight of a tower is the
#' sum of the weights of the programs in that tower.
#' 
#' In the example above, this means that for `ugml`\'s disc to be balanced,
#' `gyxo`, `ebii`, and `jptl` must all have the same weight, and they do:
#' `61`.
#' 
#' However, for `tknk` to be balanced, each of the programs standing on its
#' disc *and all programs above it* must each match. This means that the
#' following sums must all be the same:
#' 
#' -   `ugml` + (`gyxo` + `ebii` + `jptl`) = 68 + (61 + 61 + 61) = 251
#' -   `padx` + (`pbga` + `havc` + `qoyq`) = 45 + (66 + 66 + 66) = 243
#' -   `fwft` + (`ktlj` + `cntj` + `xhth`) = 72 + (57 + 57 + 57) = 243
#' 
#' As you can see, `tknk`\'s disc is unbalanced: `ugml`\'s stack is heavier
#' than the other two. Even though the nodes above `ugml` are balanced,
#' `ugml` itself is too heavy: it needs to be `8` units lighter for its
#' stack to weigh `243` and keep the towers balanced. If this change were
#' made, its weight would be `60`.
#' 
#' Given that exactly one program is the wrong weight, *what would its
#' weight need to be* to balance the entire tower? 
```
