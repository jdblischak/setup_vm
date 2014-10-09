# http://www.bioconductor.org/install/
source("http://bioconductor.org/biocLite.R")
biocLite()

pkgs <- c("affy",
          "biomaRt",
          "BSgenome",
          "Cormotif",
          "DESeq2",
          "edgeR",
          "GEOquery",
          "limma",
          "lumi",
          "minfi",
          "org.Hs.eg.db",
          "qrqc",
          "qvalue",
          "Rsamtools",
          "Rsubread",
          "ShortRead",
          "topGO")

biocLite(pkgs)
