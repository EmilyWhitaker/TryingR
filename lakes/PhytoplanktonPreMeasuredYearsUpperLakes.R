upperlakes <- read.csv("upperlakes_Phytoplankton.csv", header=TRUE)
install.packages("tidyr")
install.packages("readr")
install.packages("dplyr")
attach(upperlakes)
upperlakes
ls()
upperlakes_CR <- filter(upperlakes, lakeid == CR)
names(upperlakes)
upperlakes_CR <- filter(upperlakes, lakeid == CR)
ls()
upperlakes_CR <- dplyr::filter(upperlakes, lakeid == "CR")
upperlakes_AL <- dplyr::filter(upperlakes, lakeid == "AL")
upperlakes_BM <- dplyr::filter(upperlakes, lakeid == "BM")
upperlakes_SP <- dplyr::filter(upperlakes, lakeid == "SP")
upperlakes_TB <- dplyr::filter(upperlakes, lakeid == "TB")
upperlakes_TR <- dplyr::filter(upperlakes, lakeid == "TR")
upperlakes_CB <- dplyr::filter(upperlakes, lakeid == "CB")
upperlaes_CR_years <- distinct(upperlakes_CR, year4)
install.packages("dplyr")
library("dplyr")
upperlakes_CR_years <- distinct(upperlakes_CR, year4)
upperlakes_AL_years <- distinct(upperlakes_AL, year4)
upperlakes_BM_years <- distinct(upperlakes_BM, year4)
upperlakes_SP_years <- distinct(upperlakes_SP, year4)
upperlakes_TB_years <- distinct(upperlakes_TB, year4)
upperlakes_TR_years <- distinct(upperlakes_TR, year4)
upperlakes_CB_years <- distinct(upperlakes_CB, year4)
table(upperlakes_CB_years)
table(upperlakes_AL_years)
table(upperlakes_BM_years)
table(upperlakes_SP_years)
table(upperlakes_TB_years)
table(upperlakes_TR_years)
table(upperlakes_CR_years)
