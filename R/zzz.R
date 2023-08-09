## .onLoad gets the data.frame from the /data directory
# .onLoad <- function(libname, pkgname) {
#     load(system.file("data","graphInfo.rda",package=pkgname,
#                         lib.loc=libname))
#     OrganismDbi:::.loadOrganismDbiPkg(pkgname=pkgname,
#                         graphInfo=graphInfo)
# }

library(AnnotationHub)

org.Carabica.eg.db <- function() {
  ah <- AnnotationHub()
  annotation_data <- ah[['AH111588']]  
  return(annotation_data)
}

install.packages("./org.Carabica.eg.db", repos=NULL)

TxDb.Carabica.NCBI <- function() {
  ah <- AnnotationHub()
  annotation_data <- ah[['AH111589']]  
  return(annotation_data)
}

install.packages("./TxDb.Carabica.NCBI", repos=NULL)


.onLoad <- function(libname, pkgname) {

    load(system.file("data","graphInfo.rda",package=pkgname,
                        lib.loc=libname))
    OrganismDbi:::.loadOrganismDbiPkg(pkgname=pkgname,
                        graphInfo=graphInfo)

}