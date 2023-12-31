% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/AAR.R
\name{AAR}
\alias{AAR}
\title{Avoidance-Attraction Ratios (AAR)}
\source{
URL: https://doi.org/10.1016/j.biocon.2016.09.001
}
\usage{
AAR(
  data,
  speciesA,
  speciesB,
  species_col,
  datetime_col,
  site_col,
  unitTime = "hours"
)
}
\arguments{
\item{data}{The camera trapping dataset containing information on species, datetime, and site (dataframe).}

\item{speciesA}{The first species in the interaction sequence (character).}

\item{speciesB}{The second species in the interaction sequence (character).}

\item{species_col}{The column name indicating the species in the dataset (character).}

\item{datetime_col}{The column name indicating the datetime of each detection (character).}

\item{site_col}{The column name indicating the camera site (character).}

\item{unitTime}{The unit of time used for calculating the time differences, default is "hours".
Options: "secs", "mins", "hours" (character).}
}
\value{
A list containing:
  \describe{
    \item{total_summary}{A summary of the mean values for T1, T2, T3, T4, T2/T1, and T4/T3 across all sites that recorded an event and years (named number).}
    \item{event_count}{The total count of T1, T2, T3, and T4 events across all sites and years (named integer).}
    \item{event_summary}{The min, 1st quartile, median, mean, 3rd quartile, max for all events (dataframe).}
    \item{site_summary}{A summary of the mean T1, T2, T3, T4, T2/T1, and T4/T3 values for each site across all years(dataframe).}
    \item{detailed_summary}{Detailed information on recorded time events, "including site, year and time" differences (dataframe).}
  }
}
\description{
The AAR function analyzes camera trapping data to calculate the average time intervals for interactions involving species A and species B. It calculates the average time for T1, T2, T3, and T4 events as well as the T2/T1 and T4/T3 ratios for each site summarized across all years and provides the total summary across all sites and years.
}
\examples{
# Function Example. Note: DateTime column must be formatted as a date time and not a character string!
AAR_example <- AAR(data = KScams_dat, speciesA = "White-Tailed Deer", speciesB = "Coyote",
                  species_col = "Common_name", datetime_col = "DateTime",
                  site_col = "Site", unitTime = "hours")

}
\references{
Parsons, A. W., C. Bland, T. Forrester, M. C. Baker-Whatton, S. G. Schuttler, W. J. McShea, R. Costello, and R. Kays. 2016.
The ecological impact of humans and dogs on wildlife in protected areas in eastern North America. Biological Conservation 203:75–88.
URL: https://doi.org/10.1016/j.biocon.2016.09.001
}
\seealso{
Niedballa, J., A. Wilting, R. Sollmann, H. Hofer, and A. Courtiol. 2019. Assessing analytical methods for detecting spatiotemporal interactions between species from camera trapping data. M. Rowcliffe and J. Ahumada, editors. Remote Sensing in Ecology and Conservation 5:272–285.

URL: https://doi.org/10.1002/rse2.107
}
