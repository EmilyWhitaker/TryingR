lowlakes <- read.csv("lowlakedata.csv", header=TRUE)
attach(lowlakes)
install.packages("tidyverse", dependencies=TRUE)
library(tidyverse)
lowlakes <- read.csv("lowlakedata.csv", header=TRUE)
lowlakes_FL <- dplyr::filter(lowlakes, lakeid == "FI")
lowlakes_FL
ggplot(data = lowlakes_FL) + 
  geom_point(mapping = aes(x = relative_total_biovolume, y = genus, color =depth_range))

class(lowlakes_FL)
typeof(lowlakes_FL)
attributes(lowlakes_FL) 
save(lowlakes_FL,file="llFL.Rda")
llFL<- load("llFL.Rda")
lowlakes_FL
library(tidyr)
lowlakes_FL_sort <- spread(lowlakes_FL, key = genus, value= relative_total_biovolume)
lowlakes_FL_sort
ggplot(data = lowlakes_FL_sort) + 
  geom_point(mapping = aes(x = relative_total_biovolume, y = genus, color =depth_range))
lowlakes_FL_sort2 <- spread(lowlakes_FL, key = division, value= depth_range)
ggplot(data = lowlakes_FL_sort2) + 
  geom_point(mapping = aes(x = relative_total_biovolume, y = genus))
lowlakes_FL_sort2
lowlakes_FL
ggplot(data = lowlakes_FL_sort2) + 
  geom_point(mapping = aes(x = relative_total_biovolume, y = genus))


if genus in lowlevelFL appears more than once add relative total biovolume 
attach(lowlakedata)
lowlakes_FL_agg <- aggregate(total ~ genus + relative_total_biovolume, data = genus, sum)
lowlakes_FL_agg  <-aggregate(lowlakes_FL, by=list(genus, relative_total_biovolume), 
                    FUN=mean, na.rm=TRUE)
FL <- read.csv("FL.csv", header=TRUE)
attach(FL)
detach(lowlakedata)
attach(FL)
detach(all)
FL
names(FL)
ggplot(data = FL) + 
  geom_point(mapping = aes(x = Summed_relative_total_biovolume, y = Genus), color="blue")
ggplot(data = FL) + 
  geom_point(mapping = aes(x = Genus, y = Summed_relative_total_biovolume), color="blue")
