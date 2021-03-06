\docType{methods}
\name{isValidKey}
\alias{isValidKey}
\alias{allValidKeys}
\alias{isValidKey,character,character-method}
\alias{isValidKey,character,OrgDb-method}
\alias{allValidKeys,character-method}
\alias{allValidKeys,OrgDb-method}
\title{Get or verify valid IDs for a package or OrgDb object.}
\description{
  These functions either verify that a list of IDs are primary and valid IDs
  for a package, or else return all the valid primary IDs from a package
}
\usage{
isValidKey(ids, pkg)
allValidKeys(pkg)

\S4method{isValidKey}{character,character}(ids, pkg)

\S4method{isValidKey}{character,OrgDb}(ids, pkg)

\S4method{allValidKeys}{character}(pkg)

\S4method{allValidKeys}{OrgDb}(pkg)

}
\arguments{
  \item{ids}{A character vector containing IDs that you wish to validate.}
  \item{pkg}{Either the name of an installed annotation package (e.g.,
    "org.Hs.eg.db"), or an uninstalled annotation package, e.g., from AnnotationHub.}
}
\details{
  Every package has some kind of ID that is central to that package.
  For chip-based packages this will be some kind of probe, and for the
  organism based packages it will be something else (usually an entrez
  gene ID).  isValidKey takes a list of IDs and tests to see whether or
  not they are present (valid) in a particular package.  allValidKeys
  simply returns all the valid primary IDs for a package.
}
\value{
  \code{isValidKey} returns a vector of TRUE or FALSE values corresponding to whether or not the
  ID is valid.

  \code{allValidKeys} returns a vector of all the valid primary IDs.
}
\author{Marc Carlson}
\seealso{\code{\link{updateSymbolsToValidKeys}}}
\examples{
\dontrun{
  ## 2 bad IDs and a 3rd that will be valid
  ids <- c("15S_rRNA_2","21S_rRNA_4","15S_rRNA")
  isValidKey(ids, "org.Sc.sgd")

  ## 2 good IDs and a 3rd that will not be valid
  ids <- c("5600","7531", "altSymbol")
  isValidKey(ids, "org.Hs.eg")

  ## Get all the valid primary id from org.Hs.eg.db
  allValidKeys("org.Hs.eg")
}
}
\keyword{manip}
