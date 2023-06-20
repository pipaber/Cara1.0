---
theme: cayman
---
# Cara1.0
This is a OrgDb created for Coffea arabica (coffee). The genome used for this package is Cara_1.0 retrieved from [NCBI](https://www.ncbi.nlm.nih.gov/datasets/taxonomy/13443/) 

# Installation
```{r}
remotes::install_github("pipaber/Cara1.0")
```
# Usage

```{r}
library(Cara1.0)

# Extract genes
g = genes(Cara1.0)
g

# Extract exons by genes (GRangesList)
ex = exonsBy(Cara1.0, by = "gene")

# Extract transcripts

tr = transcriptsBy(Cara1.0, by = "gene")
```
