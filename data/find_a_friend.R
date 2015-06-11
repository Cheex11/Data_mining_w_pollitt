just_qs_no_key = just_qs

str(just_qs)

str(mtcars)

rownames(mtcars)
rownames(mtcars[1,])


#Load csv with the row names specified
just_qs_names <- read.csv(file = "just_qs_name.csv", header=TRUE, row.names = 1)
qs_expanded_names <- read.csv(file = "qs_expanded_name.csv", header=TRUE, row.names = 1)

#Change First Variable to the row name
rownames(just_qs_no_key) <- just_qs_no_key[,1]
just_qs_no_key <- just_qs_no_key[,-1]




#dist on 2 vars
x <- just_qs_no_key["241",]
y <- just_qs_no_key["214",]
dist(rbind(x,y))


#This works!
d <- dist(as.matrix(just_qs_names))
hc <- hclust(d)
plot(hc, pretty = 0)


#multidementional scaling plot
# Classical MDS
# N rows (objects) x p columns (variables)
# each row identified by a unique row name




#THIS WILL BE SHOWN
d <- dist(just_qs_names) # euclidean distances between the rows
fit <- cmdscale(d,eig=TRUE, k=2) # k is the number of dim
fit # view results

# plot solution 
x <- fit$points[,1]
y <- fit$points[,2]
plot(x, y, xlab="Coordinate 1", ylab="Coordinate 2", 
     main="Metric	MDS",	type="n")
text(x, y, labels = row.names(just_qs_names), cex=.7)




#New try
library(mclust)
fit <- Mclust(qs_expanded_name)
plot(fit) # plot results 
summary(fit) # display the best model
