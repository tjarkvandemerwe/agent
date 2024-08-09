#' Build a multiple agents at once
#'
#' @param attributes A named list, or data.frame, can be empty.
#' @returns A list of agents.
#' @examples
#' new_agents()
#' new_agents(list(energy = c(10, 10), health = c(20, 30)))
#' new_agents(data.frame(list(energy = c(10, 10), health = c(20, 30))))
new_agents <- function(attributes = list()) {

  # Set data.frame to list format
  if("data.frame" %in% class(attributes)) attributes <- as.list(attributes)

  n_agents <- max(sapply(attributes, length))

  # Reformat attributes to 'rowwise' format
  agent_attributes <- lapply(seq_along(1:n_agents), \(n) lapply(attributes, \(x) x[n]))

  agents <- lapply(agent_attributes, \(x) new_agent(attributes = x))

  structure(agents, class = "agents")
}
