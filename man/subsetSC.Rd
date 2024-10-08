% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/preprocessSingleCell.R
\name{subsetSC}
\alias{subsetSC}
\title{Load in methylation data}
\usage{
subsetSC(
  path,
  chromosome,
  startPos = NULL,
  endPos = NULL,
  updateProgress = NULL
)
}
\arguments{
\item{path}{Path to the folder containing the single-cell files.}

\item{chromosome}{The chromosome to subset the files to.}

\item{startPos}{The index of the first position to include
in the subsetting. This is optional as further narrowing of the
position can be done in the visualization step/tab.
In the Shiny app, a slider will let the user refine the positions.}

\item{endPos}{The index of the final position to include in subset.}

\item{updateProgress}{A function for generating progress bars in the Shiny app.
Should be left NULL otherwise.}
}
\value{
The output is RDS files that can be loaded into the visualization
 tab on the Shiny app
}
\description{
This function loads the single-cell files. It takes a path to the data files
and a chromosome number as arguments and returns the desired subset of the
data. Processing by chromosome is important for speed and memory efficiency.
The input files should be tab separated with three columns.
The first column is the chromosome, the second is the position (basepair), and the third
is the methylation indicator/rate. The folder should contain two subfolders titled
met and acc, with the endogenous methylation and accessibility methylation files,
respectively.
}
\examples{
# example not run since needs directory input from user
# subsc.out <- subsetSC("filepath", chromosome=19)
}
