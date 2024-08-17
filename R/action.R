#' Build an action object
#'
#' @param ... A name effect pair.
#' @returns An action object.
#' @examples
#' new_action(eat = energy + 10)
new_action <- function(...) {

  action <- rlang::enexprs(...)

  name <- names(action)
  effect <- as.character(action)

  structure(list(name = name, effect = effect), class = "action")
}


