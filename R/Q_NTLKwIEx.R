#' Quantile Value of the NTLKwIEx distribution
#'
#' This function calculates the quantile value of the NTLKwIEx distribution
#' for a given probability p.
#'
#' @param p Probability for which the quantile value is to be calculated (0 <= p <= 1)
#' @param teta Parameter teta of the distribution
#' @param alpha Parameter alpha of the distribution
#' @param a Parameter a of the distribution
#' @param b Parameter b of the distribution
#' @param m Parameter m of the distribution
#' @return The quantile value corresponding to the probability p for the NTLKwIEx distribution
#' @export
Q_NTLKwIEx <- function(p, teta, alpha, a, b, m) {
  # Function to calculate the difference between the CDF and the target probability p
  # The optimization algorithm will find the value of x that makes this difference close to 0
  target_function <- function(x) {
    C_NTLKwIEx(x, teta, alpha, a, b, m) - p
  }

  # Find the quantile using optimization (e.g., bisection method or uniroot)
  quantile <- uniroot(target_function, interval = c(0, 1000))$root

  return(quantile)
}
