#' Graphical representation of the probability density function (PDF) of the NTLKwIEx distribution
#'
#' This function generates a graph of the probability density function (PDF) of the NTLKwIEx distribution
#' over a specified range of x values.
#'
#' @param teta Parameter teta of the distribution
#' @param alpha Parameter alpha of the distribution
#' @param a Parameter a of the distribution
#' @param b Parameter b of the distribution
#' @param m Parameter m of the distribution
#' @param max_x Maximum value of x for the graph
#' @param min_x Minimum value of x for the graph
#' @return A graph of the PDF of the NTLKwIEx distribution
#' @export
Plot_PNTLKwIEx <- function(teta, alpha, a, b, m, min_x, max_x) {
  # Generate a sequence of x values for the graph
  n_points <- 100
  x_seq <- seq(min_x, max_x, length.out = n_points)

  # Calculate the values of the PDF for the NTLKwIEx distribution using the P_NTLKwIEx function
  pdf_values <- P_NTLKwIEx(x_seq, teta, alpha, a, b, m)

  # Create the graph
  plot(x_seq, pdf_values, type = "l", xlab = "x", ylab = "PDF",
       main = "Probability Density Function (PDF) of the NTLKwIEx distribution",
       col = "blue", lwd = 2)

  # Add additional customizations to the graph if necessary
  # ...
}
