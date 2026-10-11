#' Graphical representation of the Cumulative Distribution Function (CDF) of the NTLKwIEx distribution
#'
#' This function generates a plot of the Cumulative Distribution Function (CDF) of the NTLKwIEx distribution
#' over a specified range of x values.
#'
#' @param teta Parameter teta of the distribution
#' @param alpha Parameter alpha of the distribution
#' @param a Parameter a of the distribution
#' @param b Parameter b of the distribution
#' @param m Parameter m of the distribution
#' @param max_x Maximum value of x for the plot
#' @param min_x Minimum value of x for the plot
#' @return A plot of the CDF of the NTLKwIEx distribution
#' @export
Plot_CNTLKwIEx <- function(teta, alpha, a, b, m, min_x, max_x) {
  # Generate a sequence of x values for the plot
  n_points <- 1000
  x_seq <- seq(min_x, max_x, length.out = n_points)

  # Calculate the CDF values for the NTLKwIEx distribution using the C_NTLKwIEx function
  cdf_values <- C_NTLKwIEx(x_seq, teta, alpha, a, b, m)

  # Create the plot
  plot(x_seq, cdf_values, type = "l", xlab = "x", ylab = "CDF",
       main = "Cumulative Distribution Function (CDF) of the NTLKwIEx Distribution",
       col = "blue", lwd = 2)

  # Add any additional plot customization if needed
  # ...
}
