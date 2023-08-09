## .onLoad gets the data.frame from the /data directory
# .onLoad <- function(libname, pkgname) {
#     load(system.file("data","graphInfo.rda",package=pkgname,
#                         lib.loc=libname))
#     OrganismDbi:::.loadOrganismDbiPkg(pkgname=pkgname,
#                         graphInfo=graphInfo)
# }

library(AnnotationHub)

ah <- AnnotationHub()

org.Carabica.eg.db <- function() {
  
  annotation_data <- ah[['AH111588']]  
  return(annotation_data)
}

TxDb.Carabica.NCBI <- function() {
  
  annotation_data <- ah[['AH111589']]  
  return(annotation_data)
}


.onLoad <- function(libname, pkgname) {

    load(system.file("data","graphInfo.rda",package=pkgname,
                        lib.loc=libname))
    OrganismDbi:::.loadOrganismDbiPkg(pkgname=pkgname,
                        graphInfo=graphInfo)

}