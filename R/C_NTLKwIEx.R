#' Cumulative Distribution Function (CDF) of the NTLKwIEx distribution
#'
#' This function calculates the Cumulative density function (CDF) of the NTLKwIEx distribution.
#' @param x Value up to which to calculate the CDF.
#' @param teta Parameter teta of the distribution representing the distribution of the inverse exponential component.
#' @param alpha Parameter alpha of the distribution representing the distribution of the new proposal component.
#' @param a Parameter a of the distribution representing the distribution of the Kumaraswamy component.
#' @param b Parameter b of the distribution representing the distribution of the Kumaraswamy component.
#' @param m Parameter m of the distribution representing the distribution of the Topp Leone component.
#' @return Value of the CDF for the NTLKwIEx distribution evaluated at x
#' @details
#' It takes parameters x, teta, alpha, a, b, and m, and returns the CDF value at x based on these parameters.
#' The formula used for the calculation is provided in the documentation header.
#' The Cumulative Distribution Function (CDF) of the NTLKwIEx distribution is defined as:
#'\deqn{
#'   F(x;a,b,m,\alpha,\theta) = \left[ 1-\left(1-K(x,\xi)^{a \alpha^{K(x,\xi)}}\right)^{2b} \right]^{m}
#' }
#' where \eqn{\alpha , a , b, m, \theta > 0}.
#'@export
C_NTLKwIEx <- function(x, teta, alpha, a, b, m) {
  term1 <- 1 - (1 - ((exp(-teta / x))^(alpha^(exp(-teta / x))))^a)^(2 * b)
  result <- term1^m
  return(result)
}
