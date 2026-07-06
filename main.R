library(tidyverse)

tv_hours_table<- gss_cat %>% 
    filter(age < 30) %>% 
    group_by(marital) %>% 
    summarise(avg_tv_hours= mean(tvhours, na.rm= T))

write.csv(tv_hours_table,"tv_hours.csv")