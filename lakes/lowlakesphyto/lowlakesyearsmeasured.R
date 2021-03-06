lowlakes <- read.csv("lowlakedata.csv", header=TRUE)
lowlakes
install.packages("tidyr")
install.packages("readr")
install.packages("dplyr")
lowlakes_MO <- filter(lowlakes, lakeid == MO)
attach(lowlakes)
lowlakes_MO <- filter(lowlakes, lakeid == MO)
lowlakes_MO
lowlakes_MO <- filter(lowlakes, lakeid == MO)
lowlakes
ls()
names(lowlakes)
lowlakes_MO <- dplyr::filter(lowlakes, lakeid == "MO")
lowlakes_MO
plot(lowlakes_MO)
plot(lowlakes_MO, x=year4)
lowlakes_ME <- dplyr::filter(lowlakes, lakeid == "ME")
lowlakes_FL <- dplyr::filter(lowlakes, lakeid == "FI")
lowlakes_WI <- dplyr::filter(lowlakes, lakeid == "WI")
lowlakes_MO_shallow <- dplyr::filter(lowlakes_MO, depth_range == "0-2m, 2")
lowlakes_ME_shallow <- dplyr::filter(lowlakes_ME, depth_range == "0-2m, 2")
lowlakes_FL_shallow <- dplyr::filter(lowlakes_FL, depth_range == "0-2m, 2")
lowlakes_WI_shallow <- dplyr::filter(lowlakes_WI, depth_range == "0-2m, 2")
lowlakes_ME_deep <- dplyr::filter(lowlakes_ME, depth_range == "8")
lowlakes_ME_total <- dplyr::filter(lowlakes_ME, depth_range == "0-8m")
lowlakes_MO_total <- dplyr::filter(lowlakes_MO, depth_range == "0-8m")
lowlakes_FL_deep <- dplyr::filter(lowlakes_FL, depth_range != "0-2m, 2")
lowlakes_WI_deep <- dplyr::filter(lowlakes_FL, depth_range != "0-2m, 2")
lowlakes_MO_deep <- dplyr::filter(lowlakes_MO, depth_range != "0-2m, 2", depth_range == "8")
lowlakes_ME_deep <- dplyr::filter(lowlakes_ME, depth_range == "8", depth_range != "0-2m, 2")
?table
table(lowlakes_FL, year4)
lowlakes_FL_years_early <-dplyr::filter(lowlakes_FL, year4 <= "2000")
lowlakes_FL_years_late<- dplyr::filter(lowlakes_FL, year4 >= "2000")
lowlakes_FL_years_early
lowlakes_FL_years_late
lowlakes_FL
lowlakes_MO
table(lowlakes_FL_years_early, year4)
table(lowlakes_MO, year4)
as.table(lowlakes_MO_deep)
lowlakes_MO_years <- unique(year4)
lowlakes_MO_years
table(lowlakes_MO_years)
lowlakes_ME_years <- unique(year4)
lowlakes_ME_years
lowlakes_FL_years <- unique(year4)
lowlakes_FL_years
lowlakes_MO_years <- distinct(lowlakes_MO, year4)
install.packages("dplyr")
library("dplyr")
lowlakes_MO_years <- distinct(lowlakes_MO, year4)
lowlakes_MO_years
table(lowlakes_MO_years)
lowlakes_ME_years <- distinct(lowlakes_ME, year4)
lowlakes_WI_years <- distinct(lowlakes_WI, year4)
lowlakes_FL_years <- distinct(lowlakes_FL, year4)
table(lowlakes_ME_years)
table(lowlakes_WI_years)
table(lowlakes_FL_years)
table(lowlakes_MO_years)
lowlakes_FL
plot(lowlakes_FL_years)
lowlakes_FL_cyc <- dplyr::filter(lowlakes_FL, genus == "Cyclotella")
lowlakes_FL_din <- dplyr::filter(lowlakes_FL, genus == "Dinobryon")
lowlakes_FL_fra <- dplyr::filter(lowlakes_FL, genus == "Fragilaria")
lowlakes_FL_nit <- dplyr::filter(lowlakes_FL, genus == "Nitzschia")
lowlakes_FL_chr <- dplyr::filter(lowlakes_FL, genus == "Chrysococcus")
lowlakes_FL_kep <- dplyr::filter(lowlakes_FL, genus == "Kephyrion")
lowlakes_FL_erk <- dplyr::filter(lowlakes_FL, genus == "Erkenia")
lowlakes_FL_mon <- dplyr::filter(lowlakes_FL, genus == "Monoraphidium")
lowlakes_FL_ooc <- dplyr::filter(lowlakes_FL, genus == "Oocystis")
lowlakes_FL_sph <- dplyr::filter(lowlakes_FL, genus == "Sphaerocystis")
lowlakes_FL_na <- dplyr::filter(lowlakes_FL, genus == "N/A")
lowlakes_FL_cry <- dplyr::filter(lowlakes_FL, genus == "Cryptomonas")
lowlakes_FL_rho <- dplyr::filter(lowlakes_FL, genus == "Rhodomonas")
lowlakes_FL_aph <- dplyr::filter(lowlakes_FL, genus == "Aphanizomenon")
lowlakes_FL_osc <- dplyr::filter(lowlakes_FL, genus == "Oscillatoria")
lowlakes_FL_gym <- dplyr::filter(lowlakes_FL, genus == "Gymnodinium")  
lowlakes_FL_bac <- dplyr::filter(lowlakes_FL, genus == "Bacteria")
lowlakes_FL_sce <- dplyr::filter(lowlakes_FL, genus == "Scenedesmus")
lowlakes_FL_cry
counts <- lowlakes_FL_cry
barplot(counts, main="Biovolume by Genus", 
        xlab="Genus")
install.packages("tidyverse", dependencies=TRUE)
library(tidyverse)
ggplot(data = lowlakes_FL) + 
  geom_point(mapping = aes(x = genus, y = relative_total_biovolume, color =genus))
lowlakes_FL_cyc
lowlakes_FL_din
lowlakes_FL_din_total <- sum(relative_total_biovolume, lowlakes_FL_din)
?do.call
lowlakes_FL_din_total <- Reduce("+",lowlakes_FL_din, relative_total_biovolume)
lowlakes_FL_din_total
ggplot(data = lowlakes_FL) + 
  geom_point(mapping = aes(x = relative_total_biovolume, y = genus, color =genus))+
  scale_x_continuous(labels = NULL)
ggplot(lowlakes_FL, aes(genus, relative_total_biovolume)) +
  geom_point() +
  scale_x_continuous(labels = NULL) +
  scale_y_continuous(labels = NULL)
ggplot(data = lowlakes_MO) + 
  geom_point(mapping = aes(x = relative_total_biovolume, y = genus, color = year4))
lowlakes_MO_shallow
ggplot(data = lowlakes_FL_aph, lowlakes_FL_bac) + 
  geom_point(mapping = aes(x = relative_total_biovolume, y = genus, color = depth))
view(lowlakes_FL)
?lowlakes_FL
typeof(lowlakes_FL)
typeof(lowlakes_FL_aph)
lowlakes_FL_aph
lowlakes_FL_bac
lowlakes_FL_chr
lowlakes_FL_cry
lowlakes_FL_cry_sum <- unlist(lowlakes_FL_cry)
lowlakes_FL_cry_sum
lowlakes_FL_cry_sum <- sum(lowlakes_FL_cry_sum)
lowlakes_FL_cry_sum
lowlakes_FL_cry
lowlakes_FL_cry[14]
lowlakes_FL_cry_sum <- sum(lowlakes_FL_cry[14])
lowlakes_FL_cry_sum
