library(devtools)


library(twitteR)

setup_twitter_oauth("#", "#")


library(tm)
library(wordcloud)
library(RColorBrewer)

#Set working directory
setwd("C:\\Users\\Cody\\Desktop\\Data_mining_w_pollitt\\data")



# get recent public tweets
public_tweets = publicTimeline()
install.packages(c("devtools", "rjson", "bit64", "httr"))