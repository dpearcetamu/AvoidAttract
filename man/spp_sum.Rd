% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/spp_sum.R
\name{spp_sum}
\alias{spp_sum}
\title{Species Summary Table}
\usage{
spp_sum(data, name_col)
}
\arguments{
\item{data}{The dataset containing information on species observations (dataframe).}

\item{name_col}{The column name indicating the species in the dataset (character).}
}
\value{
A data frame containing two columns:
  \describe{
    \item{Name}{The unique species names.}
    \item{Observations}{The number of observations for each unique species.}
  }
}
\description{
Function generates a frequency table summarizing the number of observations for each unique species in a dataset.
}
\examples{
spp_sum_ex <- spp_sum(KScams_dat, name_col = "Common_name")

}
