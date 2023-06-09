# Creation of OrgDb Coffea arabica

library(AnnotationForge)
makeOrgPackageFromNCBI(version = "0.1",
    author = "Piero Palacios Bernuy <p.palacios.bernuy@gmail.com>",
    maintainer = "Piero Palacios Bernuy <p.palacios.bernuy@gmail.com>",
    outputDir = ".",
    tax_id = "13443",
    genus = "Coffea",
    species = "arabica")

# Creation of TxDb Coffea arabica

library(GenomicFeatures)

## Specify the path to your GFF file
gtfFile <- "D:/Descargas/ncbi_dataset/data/GCF_003713225.1/genomic.gtf"

metadata <- data.frame(name="Resource URL",
                       value= "https://www.ncbi.nlm.nih.gov/datasets/taxonomy/13443/")

## Create a transcript database from the GFF file
txdb <- makeTxDbFromGFF(file = gtfFile, format = "gtf",organism = "Coffea arabica", taxonomyId = 13443, dataSource = "NCBI", 
                        circ_seqs = "NC_008535.1", metadata = metadata)

## Save the transcript database to a package
pkgname <- "TxDb.CoffeaArabica"
dirname <- getwd()
makeTxDbPackage(txdb = txdb, version = "0.1", author = "Piero Palacios <p.palacios.bernuy@gmail.com>", 
                maintainer = "Piero Palacios", 
                destDir = dirname)

## Build and install the package
setwd(dirname)
devtools::build(pkg = "TxDb.Carabica.NCBI",path = dirname)
devtools::check_built("D:/Multi omics/TxDb.Carabica.NCBI_0.1.tar.gz")
devtools::install_local("D:/Multi omics/TxDb.Carabica.NCBI_0.1.tar.gz")


## Load the package
library(TxDb.Carabica.NCBI, character.only = TRUE)

# Creation of OrgDbi package

library(OrganismDbi)

gd = list( join1 = c(GO.db="GOID", org.Carabica.eg.db="GO"),
           join2 = c(org.Carabica.eg.db="SYMBOL",
              TxDb.Carabica.NCBI="GENEID"))


if (!file.exists("Cara1.0"))
  # don't do twice...
makeOrganismPackage(pkgname="Cara1.0",  # simplify typing!
  graphData=gd, organism="Coffea arabica",
  version="1.0.0", maintainer="Piero Palacios Bernuy <p.palacios.bernuy@gmail.com>",
  author="Piero Palacios Bernuy <p.palacios.bernuy@gmail.com>",
  destDir=".",
  license="Artistic-2.0")

install.packages("Cara1.0", repos=NULL, type="source")
