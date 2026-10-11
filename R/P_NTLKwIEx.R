#' Probability Density Function (PDF) of the NTLKwIEx distribution
#'
#' The Probability Density Function (PDF) of the NTLKwIEx distribution is defined as:
#'
#' \deqn{
#' f(x, \theta, \alpha, a, b, m) =2abm\frac{\theta}{x^{2}}\left( -\frac{\theta}{x}log\left( \alpha \right)+ exp\left( \dfrac{\theta}{x}\right)\right)exp\left\lbrace -\frac{\theta}{x}\left(1+a\alpha^{exp\left(-\frac{\theta}{x}\right)}\right)\right\rbrace \left\lbrace 1-exp\left( -a\frac{\theta}{x}\alpha^{exp\left(-\frac{\theta}{x}\right)} \right)\right\rbrace^{2b-1}\left\lbrace  1-\left\lbrace   1-exp\left( -\frac{a\theta}{x} \alpha^{exp\left(-\frac{\theta}{x}\right) }\right)\right\rbrace ^{2b} \right\rbrace^{m-1}
#' }
#'
#' @param x Value to evaluate the PDF at
#' @param teta Parameter teta of the distribution
#' @param alpha Parameter alpha of the distribution
#' @param a Parameter a of the distribution
#' @param b Parameter b of the distribution
#' @param m Parameter m of the distribution
#' @return Value of the PDF for the NTLKwIEx distribution evaluated at x
#' @export
P_NTLKwIEx <- function(x, teta, alpha, a, b, m) {
  term1 <- 2 * a * b * m
  term2 <- (1 - (1 - (exp(-teta / x)^(alpha^exp(-teta / x)))^a)^(2 * b))^(m - 1)
  term3 <- (exp(-teta / x)^(alpha^exp(-teta / x)))^(a - 1)
  term4 <- (1 - (exp(-teta / x)^(alpha^exp(-teta / x)))^a)^(2 * b - 1)
  term5 <- ((alpha^exp(-teta / x) * teta * exp(-teta / x)^(alpha^exp(-teta / x) - 1) * exp(-teta / x)) / x^2)
  term6 <- ((alpha^exp(-teta / x) * teta * exp(-teta / x)^(alpha^exp(-teta / x)) * exp(-teta / x) * log(exp(-teta / x)) * log(alpha)) / x^2)

  result <- term1 * term2 * term3 * term4 * (term5 + term6)
  return(result)
}
