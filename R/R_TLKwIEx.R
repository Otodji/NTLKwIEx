#' Random Sampling from the NTLKwIEx distribution
#'
#' This function generates random samples from the NTLKwIEx distribution
#' based on the given parameters.
#'
#' @param n Number of random samples to generate
#' @param teta Parameter teta of the distribution
#' @param alpha Parameter alpha of the distribution
#' @param a Parameter a of the distribution
#' @param b Parameter b of the distribution
#' @param m Parameter m of the distribution
#' @return A vector of n random samples from the NTLKwIEx distribution
#' @export
R_NTLKwIEx <- function(n, teta, alpha, a, b, m) {
  # Generate random values from a standard uniform distribution
  u <- runif(n)

  # Calculate the inverse of the CDF (quantile function) using Q_NTLKwIEx for each value of u
  x_values <- sapply(u, function(u_val) Q_NTLKwIEx(u_val, teta, alpha, a, b, m))

  return(x_values)
}
