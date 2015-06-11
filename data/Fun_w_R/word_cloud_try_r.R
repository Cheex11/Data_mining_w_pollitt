#Set working directory
setwd("C:\\Users\\Cody\\Desktop\\Data_mining_w_pollitt\\data\\Fun_w_R")

require(tm)
require(wordcloud)

lords <- Corpus(DirSource("words//"))
lords <- tm_map(lords, stripWhitespace)
lords <- tm_map(lords, content_transformer(tolower))
lords <- tm_map(lords, removeWords, stopwords("english"))
lords <- tm_map(lords, stemDocument)
wordcloud(lords, scale=c(5,0.5), max.words=100, random.order=FALSE, rot.per=0.35, use.r.layout=FALSE, colors=brewer.pal(8, "Dark2"))


####Cluster the words  (11,729)

docs <- tm_map(lords, PlainTextDocument)
dtm <- DocumentTermMatrix(docs)
tdm <- TermDocumentMatrix(docs)  
freq <- colSums(as.matrix(dtm))   
ord <- order(freq)   
dtms <- removeSparseTerms(dtm, 0.1) # This makes a matrix that is 10% empty space, maximum.   
wf <- data.frame(word=names(freq), freq=freq)   

library(ggplot2)   
p <- ggplot(subset(wf, freq>50), aes(word, freq))    
p <- p + geom_bar(stat="identity")   
p <- p + theme(axis.text.x=element_text(angle=45, hjust=1))   
p   

set.seed(142)   
wordcloud(names(freq), freq, min.freq=25)   

#100 most used words
set.seed(142)   
wordcloud(names(freq), freq, max.words=100)   

#With color 
set.seed(142)   
dark2 <- brewer.pal(6, "Dark2")   
wordcloud(names(freq), freq, max.words=100, rot.per=0.2, colors=dark2)   

#Clustering by Term Similarity
dtmss <- removeSparseTerms(dtm, 0.15) # This makes a matrix that is only 15% empty space, maximum.   
inspect(dtmss)   

#Hierarchal Clustering
library(cluster)   
d <- dist(t(dtmss), method="euclidian")   
fit <- hclust(d=d, method="ward.D")   
fit   

