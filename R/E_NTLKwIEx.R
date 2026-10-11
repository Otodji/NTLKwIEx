#' Estimate parameters with constraints
#'
#' This function estimates the parameters of the NTLKwIEx distribution while adhering to parameter constraints. It employs the maximum likelihood estimation method and returns estimated values for each parameter based on a given dataset and the specified constraints.
#' @rdname E_NTLKwIEx
#'
#' @param data Numeric vector of data values.
#' @return Numeric vector of estimated parameters.
#' @importFrom stats nlminb
#' @importFrom utils Inf
#'
#' @export
E_NTLKwIEx <- function(data) {
  log_likelihood <- function(parameters) {
    teta <- parameters[1]
    alpha <- parameters[2]
    a <- parameters[3]
    b <- parameters[4]
    m <- parameters[5]

    # Calculate the log-likelihood value for the data
    log_lik <- sum(log(P_NTLKwIEx(data, teta, alpha, a, b, m)))

    return(-log_lik)
  }

  # Constraints
  constraint <- function(parameters) {
    teta <- parameters[1]
    alpha <- parameters[2]
    a <- parameters[3]
    b <- parameters[4]
    m <- parameters[5]
    # Check parameter constraints
    if (teta <= 0 || alpha <= 0 || a <= 0   || b <= 0   || m <= 0 ) {
      return(Inf)  # Return infinity for infeasible parameter values
    }

    return(NULL)
  }

  # Estimate parameters using constrained optimization
  start_params <- c(mean(data), 0.5, 1, 1, 2)

  # Masquer les avertissements pendant l'estimation des paramètres
  result <- suppressWarnings(nlminb(start_params,
                                    log_likelihood,
                                    lower = c(0, 0, 0, 0, 0),
                                    control = list(trace = FALSE)))

  # Extract the estimated parameters
  estimated_params <- result$par

  return(estimated_params)
}

