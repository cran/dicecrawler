\name{getjobs}
\alias{getjobs}
\title{Function for downloading job data from Dice.com}
\description{
The function automatically crawls Dice.com and downloads job descriptions based on the supplied parameters. JobSearch API supplied by Dice.com is used to search for jobs. The job data is returned via a dataframe.}
\usage{
getjobs(title, phrase, direct, areacode, country, state, skill, cityzip, ip, age, diceid,
sortcode, sortdirection)
}
\arguments{
  \item{title}{Required parameter. Specifies search text for the entire job description. This parameter is a string, value should be supplied in quotes.}
  \item{phrase}{Optional parameter. This parameteris used to specify whether the search should be for an exact phrase. The value "1" should be supplied to treat a job title as a phrase. If job title is a phrase (e.g. "data scientist"), then the title will be encoded as a phrase into the search URL. Otherwise, jobs containing both words ("data" and "scientist", in no particular order) will be retreived. This parameter is a string, value should be supplied in quotes.}
  \item{direct}{Optional parameter. If the value of this parameter is "1" then jobs returned will be for direct hires. This parameter is a string, value should be supplied in quotes.}
  \item{areacode}{Optional parameter. Specifies the area code for jobs to be retreived. This parameter is a string, value should be supplied in quotes.}
  \item{country}{Optional parameter. Specifies the ISO 3166 country code for for jobs to be retreived. This parameter is a string, value should be supplied in quotes.}
  \item{state}{Optional parameter. Specifies the United States Post Office state code for jobs to be retreived. This parameter is a string, value should be supplied in quotes.}
  \item{skill}{Optional parameter. Specifies the search text for the skill property of each job listing. This parameter is a string, value should be supplied in quotes.}
  \item{cityzip}{Optional parameter. Specifies the city are where the jobs to be retreived are listed. A zip code is required for this parameter. Jobs within 40 mile radius of the zip code will be retreived. This parameter is a string, value should be supplied in quotes.}
  \item{ip}{Optional parameter. Specifies an IP address that will be used to look up a geocode which will be used in the search. This parameter is a string, value should be supplied in quotes.}
  \item{age}{Optional parameter. Specifies the age of the posting in days This parameter is a string, value should be supplied in quotes.}
  \item{diceid}{Optional parameter. Specifies Dice ID of a company posting jobs. Only jobs from that company will be retreived. This parameter is a string, value should be supplied in quotes.}
  \item{sortcode}{Optional parameter. Specifies how retreived jobs will be sorted: sortcode = "1" sorts by posted age; sortcode= "2" sorts by job title; sortcode = "3" sorts by company; sortcode = "4" sorts by location. This parameter is a string, value should be supplied in quotes.}
  \item{sortdirection}{Optional parameter. Specifies sort direction of the jobs retreived. If sortdirection="a", then sort order is ascending. If sortdirection="d", then sort order is descending. This parameter is a string, value should be supplied in quotes.}
}

\details{
This function makes use of the following packages: jsonlite, rvest, curl. Only one parameter is required: 'title'. It takes approximately 1 second to download one job.
}

\value{The function returns a data frame named job_table. The dataframe contains data about jobs retreived. The data frame contains the following columns: JobURL, JobTitle, Company, JobLocation, JobDate, JobDescription}

\author{Vlad Krotov (vkrotov@murraystate.edu)}

\examples{
## Download data scientist jobs in Kentucky. An exact match for "data scientist" is needed

library(dicecrawler)
jobsTX <- getjobs(title = "data scientist", phrase = "1", state = "KY")

}

\keyword{datagen}
\keyword{utilities}


