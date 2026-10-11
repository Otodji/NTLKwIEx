#' Estimate parameters with constraints
#'
#'This function generates a histogram that depicts the distribution of the provided input data. Additionally, it estimates the parameters of a distribution that would correspond to the given data. By overlaying the estimated density function onto the histogram, Sim_NTLKwIEx enables an immediate comparison between the empirical distribution and the estimated one. Sim_NTLKwIEx proves to be a valuable tool for initial data exploration, streamlining trend identification, and understanding key features. Its usage comes recommended for tasks that require a swift exploratory analysis of data distributions.
#'
#' @param data Numeric vector of data values.
#' @return Numeric vector of estimated parameters.
#' @importFrom stats nlminb
#' @importFrom utils Inf
#'
#' @export
#' @examples
#' Sim_NTLKwIEx(c(38.181,	38.542,	38.928,	39.334,35.8))
#'
Sim_NTLKwIEx <- function(data){

  hist(data, main = "Histogram with Estimated Density", xlab = "Values", ylab = "Density", freq = FALSE, breaks = 15)
  estimated_params <- E_NTLKwIEx(data)

  x <- seq(0, max(data) * 1.2, length.out = 1000)

  density_values <- P_NTLKwIEx(x, estimated_params[1], estimated_params[2], estimated_params[3], estimated_params[4],estimated_params[5])
  lines(x, density_values, col = "red", lwd = 2)
}
