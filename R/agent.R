#' Build an agent object
#'
#' @param attributes A named list, can be empty.
#' @returns An agent object.
#' @examples
#' new_agent()
#' new_agent(list(energy = 10, health = 20))

new_agent <- function(attributes = list()) {
  structure(attributes, class = "agent")
}

validate_agent <- function(x) {
  values <- unclass(x)

  if(length(values) == 0) return(x)

  if(any(names(values) == "") | is.null(names(values))) {
    stop(
      paste("All the attributes of agents need to have names.",
            "Provide them in a named list: list(a = 10)."),
      call. = FALSE
    )
  }

  return(x)
}

#' Build an agent object
#'
#' @param attributes A named list.
#' @returns An agent object.
#' @examples
#' agent()
#' agent(list(energy = 10, health = 20))

agent <- function(attributes = list()) {
  new_agent(attributes) |> validate_agent()
}
