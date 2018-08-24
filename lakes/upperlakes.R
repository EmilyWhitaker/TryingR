upperlakes_Phytoplankton <- read.csv("perlakes_Phytoplankton.txt", header=FALSE)
ls()
setwd("~/Documents/GitHub/TryingR/lakes 1")
upperlakes <- read.csv("upperlakes_Phytoplankton.csv", header=FALSE)
upperlakes
upperlakes (lakeid)
install.packages("tidyr")
install.packages("readr")
install.packages("dplyr")
unique(lakeid)
summary(upperlakes)
upperlakes
row.names(upperlakes) <- NULL
help(tidy)
??tidy
??dplyr
filter(upperlakes, lakeid == CR)
colnames(upperlakes_Phytoplankton, do.NULL = TRUE, prefix = "col")
colnames(upperlakes_Phytoplankton, do.NULL = FALSE, prefix = "col")
colnames(upperlakes) <- c(lakeid, year4, sampledate, sta, depth_range, division, taxa_name, gald, cells_per_nu, nu_per_ml, cells_per_ml, biovolume_conc, biomass_conc, relative_total_biovolume, gen)
read.table(upperlakes_Phytoplankton)
read.table(upperlakes)
filter(upperlakes, CR)
upperlakes <- read.csv("upperlakes_Phytoplankton.csv", header=TRUE)
upperlakes
summarise(upperlakes)
CR
?head
upperlakes_CR <- filter(upperlakes, year4 == 2005)
colnames(upperlakes) <- c(lakeid, year4, sampledate, sta, depth_range, division, taxa_name, gald, cells_per_nu, nu_per_ml, cells_per_ml, biovolume_conc, biomass_conc, relative_total_biovolume, gen)

upperlakes
upperlakes_CR <- filter(upperlakes, lakeid == CR)
library(dplyr)
