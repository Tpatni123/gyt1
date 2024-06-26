
SBP.code.path="https://raw.githubusercontent.com/stan-pounds/Simple-Biostats-Program/main/"

# specify the file names
SBP.code.files=c("describe.R","correlate.R",
               "compare.R","model.R","colors.R",
               "print.R","figures.R","read-data.R",
               "outliers.R","resample.R","base-SBP.R",
               "associate.R")

SBP.code.files=paste0(SBP.code.path,SBP.code.files)
source("https://raw.githubusercontent.com/Tpatni123/gyt1/master/get.package.R")
for (i in 1:length(SBP.code.files)){
  source(SBP.code.files[i])}

try(get.package("DescTools"))
try(get.package("survival"))
try(get.package("cmprsk"))
try(get.package("penalized"))
try(get.package("knitr"))
try(get.package("data.table"))
try(get.package("readxl"))
try(get.package("utils"))
try(get.package("coin"))
try(get.package("MatrixModels"))
try(get.package("riskRegression"))
try(get.package("robustbase"))
#get.package("rsq")
