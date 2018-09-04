lowlakes <- read.csv("lowlakedata.csv", header=TRUE)
attach(lowlakes)
install.packages("tidyverse", dependencies=TRUE)
library(tidyverse)
lowlakes <- read.csv("lowlakedata.csv", header=TRUE)
lowlakes_MO <- dplyr::filter(lowlakes, lakeid == "MO")
lowlakes_MO
ggplot(data = lowlakes_MO) + 
  geom_point(mapping = aes(x = relative_total_biovolume, y = genus, color = year4))
ggplot(data = lowlakes_MO) + 
  geom_point(mapping = aes(x = relative_total_biovolume, y = genus, color = depth_range))
## depth cut offs ###

full_depth <- dplyr::filter(lowlakes_MO, depth_range == "0-8m, 0-8M")
epi_depth <- dplyr::filter(lowlakes_MO, depth_range == "0-2m, 0-2M, 2, 2m, 2M")

ggplot(data = full_depth) + 
  geom_point(mapping = aes(x = relative_total_biovolume, y = genus, color = year4))

full_depth
epi_depth
full_depth <- dplyr::filter(lowlakes_MO, depth_range == "0-8m"|"0-8M")
full_depth

ggplot(data = lowlakes_MO) + 
  geom_point(mapping = aes(x = relative_total_biovolume, y = division, color = year4))
ggplot(data = lowlakes_MO) + 
  geom_point(mapping = aes(x = relative_total_biovolume, y = division, color = depth_range))



## depth seperation ####
lowlakes_MO_shallow <- dplyr::filter(lowlakes_MO, depth_range == "0-2m")
ggplot(data = lowlakes_MO_shallow) + 
  geom_point(mapping = aes(x = relative_total_biovolume, y = division, color = year4))


lowlakes_MO_shallow <- dplyr::filter(lowlakes_MO, depth_range != "0-8m, 0-8M")
lowlakes_MO_shallow
ggplot(data = lowlakes_MO_shallow) + 
  geom_point(mapping = aes(x = relative_total_biovolume, y = division, color = depth_range))

###lowlakes_MO %>%
 ### dplyr::filter(lowlakes_MO, depth_range == "0-2m") %>%
 #### dplyr::filter(lowlakes_MO, depth_range == "0-2M") %>%
 ### dplyr::filter(lowlakes_MO, depth_range == "2")
lowlakes_MO_shallow <- dplyr::filter(lowlakes_MO, depth_range != "0-8m, 0-8M")
tail(lowlakes_MO_shallow)
ggplot(data = lowlakes_MO_shallow) + 
  geom_point(mapping = aes(x = relative_total_biovolume, y = division))
lowlakes_MO_total <- dplyr::filter(lowlakes_MO, depth_range != "0-2m,2, 0-2M")
ggplot(data = lowlakes_MO_total) + 
  geom_point(mapping = aes(x = relative_total_biovolume, y = division))
lowlakes_MO_total

lowlakes_MO_shallow %>%
  filter(depth_range %in% c("0-2m", "0-2M", "2"))
ggplot(data = lowlakes_MO_shallow) + 
  geom_point(mapping = aes(x = relative_total_biovolume, y = division))
lowlakes_MO_total %>%
  filter(depth_range %in% c("0-8M", "0-8m"))
ggplot(data = lowlakes_MO_total) + 
  geom_point(mapping = aes(x = relative_total_biovolume, y = division))         
lowlakes_MO_total    #### still contains 0-2m/M          
lowlakes_MO_total %>%
  filter(str_detect(depth_range,("0-8M|0-8m")))
lowlakes_MO_total
lowlakes_MO_shallow <- lowlakes_MO[c(depth_range !="0-8M" or depth_range!= "0-8m") ]
