remotes::install_github('ewenme/understatr')

library(understatr)

get_leagues_meta()

get_team_players_stats(team_name = "Manchester City", year = 2018)

get_player_seasons_stats(player_id = 618)

match81 <- get_match_shots(match_id = 81) #start
match15607 <- get_match_shots(match_id = 15607) #end

get_match_stats(match_id = 11662)

player882 <- get_player_matches_stats(player_id = 882)
get_player_shots(player_id = 882)

setwd("/Users/paulgoodship/Documents/Data Projects/Football/Understat")
write_csv(match14615, "match11662_shots.csv")

library(rvest)
library(dplyr)
library(purrr)

#page<- (81:85)

Test_36 <- list()

for (i in 1:100) {
  Test_36[[i]] <- tryCatch(get_match_shots(match_id = i),
  error = function(e) paste("something wrong here"))
  #Test_35.blank[is.na(i)] <- NA
 
}

Table_36 <- flatten(Test_36)
Table_36 <- unlist(Test_36, recursive = FALSE)

Filter(function(x) any('something wrong here', Test_36))
Filter(Negate("something wrong here"), Test_36)
Test_36[lapply(Test_36, length) > 2]

Table_36 <- keep(Test_36, is.data.frame) %>% 
  bind_rows


result <- purrr::keep(Test_36, ~ ncol(.x) == 20)

keep(Test_36, ~.[["total"]] == 20)

Table_36 <- data.frame(do.call(rbind, Test_36))

match

finaltbl <- list(tbl1,tbl2,tbl3,tbl4,tbl5,tbl6,tbl7,tbl8,tbl9,tbl10,
                 tbl11,tbl12,tbl13,tbl14,tbl15,tbl16,tbl17,tbl18,tbl19,tbl20,
                 tbl21,tbl22,tbl23,tbl24,tbl25,tbl26,tbl27,tbl28,tbl29,tbl30,
                 tbl31,tbl32,tbl33,tbl34,tbl35,tbl36)

Final_Table <- data.frame(do.call(rbind, finaltbl))


library(httr)

is_valid_artist <- function(x) {
  httr::status_code(httr::HEAD(sprintf("https://understat.com/match/https://ls", x)))
}

is_valid_artist <- function(x) {
  httr::status_code(httr::HEAD(sprintf("https://lsdb.eu/artists/view/%s/", x)))
}

is_valid_artist(15607)

setwd("/Users/paulgoodship/Documents/Data Projects/Football/Understat")
write_csv(Final_Table, "All_shots_from_understats.csv")

for (i in 1:36) {
  finaltbl[[i]] <- list(tbl[[i]])
  
}

#j <- 1

for (j in seq_along(urls)) {
  
  tbl[[j]] <- urls[[j]] %>%
    read_html() %>%
    html_table() 
  #bind_rows()
  
  #tbl[[j]]$j <- j
  #j <- j+1 
}



result <- list()

result <- purrr::keep(tbl1, ~ ncol(.x) == 6)

final <- do.call(rbind, result)

final$Date <- as.Date(final$Date, '%d/%m/%Y')

final01 <- distinct(final)

understatSitemap <- read_xml("https://understat.com//sitemap.xml")
read_xml("https://understat.com//sitemap.xml")


library(XML)
xmlParse(file = "https://understat.com//sitemap.xml")

get_leagues_meta()
test <- get_match_stats(match_id = 11662)
get_team_meta(team_name = "Newcastle United")

head()

