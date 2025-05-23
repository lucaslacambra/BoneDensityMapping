% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/BoneDensityFunctions.R
\name{plot_mesh}
\alias{plot_mesh}
\title{plot mesh}
\usage{
plot_mesh(surface_mesh, density_color, title, userMat)
}
\arguments{
\item{surface_mesh}{Mesh object}

\item{density_color}{Vector}

\item{title}{String}

\item{userMat}{Matrix}
}
\value{
plot of mesh with color
}
\description{
plot mesh
}
\examples{
#load surface mesh
surface_mesh_path <- system.file("extdata", "test_CT_femur.stl", package = "BoneDensityMapping")
surface_mesh <- vcgImport(surface_mesh_path, updateNormals = TRUE)
density_color <- color_mapping(mat_peak)
# specify custom view angles using a 4x4 matrix (e.g., rotating the plot)
userMat <- matrix(c(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, -5, 0, 0, 0, 1), nrow = 4, byrow = TRUE)
plot_mesh(surface_mesh, density_color, "Mesh Colored by Z", userMat)
}
\author{
Scott Telfer \email{scott.telfer@gmail.com}
}
