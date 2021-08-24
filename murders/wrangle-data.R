library(tidyverse)
murders <- read.csv("data/murders.csv")
murders <- murders %>% mutate(region = factor(region),rate=total/population * 10^5)
head(murders)
save(murders,file = "rda/murders.rda")

