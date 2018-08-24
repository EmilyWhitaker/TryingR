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
