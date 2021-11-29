#' Day {{{ dd_number }}}: {{{ title }}}
#'
#' [{{{ title }}}]({{{ url }}})
#'
#' @name day{{{ dd_number }}}
#' @rdname day{{{ dd_number }}}
#' @details
#'
#' **Part One**
#'
{{{ part_1 }}}
#'
#' **Part Two**
#'
#' *(Use have to manually add this yourself.)*
#'
#' *(Try using `convert_clipboard_html_to_roxygen_md()`)*
#'
#' @param x some data
#' @return For Part One, `f{{{ dd_number }}}a(x)` returns .... For Part Two,
#'   `f{{{ dd_number }}}b(x)` returns ....
#' @export
#' @examples
#' f{{{ dd_number }}}a(example_data_{{{ dd_number }}}())
#' f{{{ dd_number }}}b()
f{{{ dd_number }}}a <- function(x) {

}


#' @rdname day{{{ dd_number }}}
#' @export
f{{{ dd_number }}}b <- function(x) {

}


f{{{ dd_number }}}_helper <- function(x) {

}


#' @param example Which example data to use (by position or name). Defaults to
#'   1.
#' @rdname day{{{ dd_number }}}
#' @export
example_data_{{{ dd_number }}} <- function(example = 1) {
  l <- list(
    a = c(


    )
  )
  l[[example]]
}

