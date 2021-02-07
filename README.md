# Football-Shots
Data mining all football shoots from understat.com

remotes::install_github('ewenme/understatr')

library(understatr)

library(rvest)
library(dplyr)
library(purrr)

List <- list()

for (i in 1:16000) {
  List[[i]] <- tryCatch(get_match_shots(match_id = i),
  error = function(e) paste("nothing here"))
 }
 
Final_Table <- keep(List, is.data.frame) %>% 
  bind_rows

