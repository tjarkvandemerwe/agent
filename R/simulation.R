#' Build a simulation object
#'
#' @param name The name of this simulation.
#' @param agents A group of agents.
#' @returns A simulation object.
#' @examples
#' new_simulation()
#' new_simulation(agents = agents())
new_simulation <- function(name = NULL, agents = NULL) {
  structure(list(name = name, agents = agents), class = "simulation")
}
