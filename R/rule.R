#' Build a rule object
#'
#' @param ... A condition action pair.
#' @returns An rule object.
#' @examples
#' new_rule(energy < 5 ~ eat)
new_rule <- function(...) {

  arg <- deparse(...)

  # split rhs and lhs
  arg <- arg |> strsplit("~") |> unlist()

  # remove outer spaces
  arg <- gsub("(^ )|( $)", "", arg)

  # get rhs and lhs as string
  condition <- arg[1]
  action <- arg[2]

  structure(list(condition = condition, action = action), class = "rule")
}
