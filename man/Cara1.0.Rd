\name{Cara1.0}
\docType{data}
\title{Annotation package that collates several annotation resources.}
\description{This data object was automatically created by Piero Palacios Bernuy
    <p.palacios.bernuy@gmail.com>. It represents a collection 
    of annotation packages that can be used as a single object named 
    Cara1.0.  This object can be used with the standard four accessor method 
    for all AnnotationDbi objects.  Namely:
    \code{cols}, \code{keytype}, \code{keys} and \code{select}.  Users are
    encouraged to read the vignette from the \code{OrganismDbi} package for
    more details.}
\usage{library(Cara1.0)}
\examples{
    Cara1.0
    cls <- columns(Cara1.0)
    cls
    cls <- cls[c(10,14,21)]
    kts <- keytypes(Cara1.0)
    kt <- kts[12]
    kts
    ks <- head(keys(Cara1.0, keytype="GID"))
    ks
    res <- select(Cara1.0, keys=ks, columns=cls, keytype="GID")
    head(res)
}
\author{
Piero Palacios
}
\value{
A OrganismDb object. Includes a GO.db object,
a TxDb object and an OrgDb object. Data can be
accessed with \code{select} method from the
package \code{AnnotationDbi}. 
See \code{\link{select}} for how to use the 
function.
}