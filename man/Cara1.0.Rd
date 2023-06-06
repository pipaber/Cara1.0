\name{Cara1.0}
\docType{data}
\alias{Cara1.0}
\title{Annotation package that collates several annotation resources.}
\description{This data object was automatically created by Piero Palacios Bernuy <p.palacios.bernuy@gmail.com>. It
  represents a collection of annotation packages that can be used as a
  single object named Cara1.0.  This object can be used with the
  standard four accessor method for all AnnotationDbi objects.  Namely:
  \code{cols}, \code{keytype}, \code{keys} and \code{select}.  Users are
  encouraged to read the vignette from the \code{OrganismDbi} package for
  more details.}
\usage{library(Cara1.0)}
\keyword{datasets}
\examples{
  Cara1.0
  cls <- columns(Cara1.0)
  cls
  cls <- cls[c(1,19,45)]
  kts <- keytypes(Cara1.0)
  kt <- kts[2]
  kts
  ks <- head(keys(Cara1.0, keytype=kts[2]))
  ks
  res <- select(Cara1.0, keys=ks, columns=cls, keytype=kt)
  head(res)
}
