# TCGAbiolinks - An R/Bioconductor package for integrative analysis with TCGA data

TCGAbiolinks is able to access The National Cancer Institute (NCI) Genomic Data Commons (GDC) through its GDC Application Programming Interface (API) to search, download and prepare relevant data for analysis in R.

This fork is derived from https://github.com/BioinformaticsFMRP/TCGAbiolinks. It is maintained as part of my INB321G course at the University of Texas Austin and where it is used to introduce biology students to scripting and experimenmtal design in computational biology research.

You can install this package by running the following code.

### Installation from GitHub ###
```R
if (!requireNamespace("pak", quietly = TRUE)){
    install.packages("pak")
}
pak::pak("NolanBentley/TCGAbiolinks")
```

------------------------------------------------------------------------

## Citation

Please cite both TCGAbiolinks package: 

* Colaprico A, Silva TC, Olsen C, Garofano L, Cava C, Garolini D, Sabedot T, Malta TM, Pagnotta SM, Castiglioni I, Ceccarelli M, Bontempi G and Noushmehr H. "TCGAbiolinks: an R/Bioconductor package for integrative analysis of TCGA data." Nucleic acids research (2015): gkv1507.

* Mounir, Mohamed, Lucchetta, Marta, Silva, C T, Olsen, Catharina, Bontempi, Gianluca, Chen, Xi, Noushmehr, Houtan, Colaprico, Antonio, Papaleo, Elena (2019). “New functionalities in the TCGAbiolinks package for the study and integration of cancer data from GDC and GTEx.” PLoS computational biology, 15(3), e1006701.

* Silva TC, Colaprico A, Olsen C et al.TCGA Workflow: Analyze cancer genomics and epigenomics data using Bioconductor packages [version 2; peer review: 1 approved, 2 approved with reservations]. F1000Research 2016, 5:1542
(https://doi.org/10.12688/f1000research.8923.2)

[![doi](https://img.shields.io/badge/doi-10.1093/nar/gkv1507-green.svg?style=flat)](http://dx.doi.org/10.1093/nar/gkv1507) [![citation](https://img.shields.io/badge/cited%20by-1151-green.svg?style=flat)](https://scholar.google.com.hk/scholar?oi=bibs&hl=en&cites=15937881581405647591) [![Altmetric](https://img.shields.io/badge/Altmetric-44-green.svg?style=flat)](https://www.altmetric.com/details/4919535)

Also, if you have used ELMER analysis please cite:

* Yao, L., Shen, H., Laird, P. W., Farnham, P. J., & Berman, B. P. "Inferring regulatory element landscapes and transcription factor networks from cancer methylomes." Genome Biol 16 (2015): 105.
* Yao, Lijing, Benjamin P. Berman, and Peggy J. Farnham. "Demystifying the secret mission of enhancers: linking distal regulatory elements to target genes." Critical reviews in biochemistry and molecular biology 50.6 (2015): 550-573.
* Tiago C Silva, Simon G Coetzee, Nicole Gull, Lijing Yao, Dennis J Hazelett, Houtan Noushmehr, De-Chen Lin, Benjamin P Berman, ELMER v.2: an R/Bioconductor package to reconstruct gene regulatory networks from DNA methylation and transcriptome profiles, Bioinformatics, Volume 35, Issue 11, 1 June 2019, Pages 1974–1977, https://doi.org/10.1093/bioinformatics/bty902
