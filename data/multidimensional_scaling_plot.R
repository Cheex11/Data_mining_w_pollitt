#Set working directory
setwd("C:\\Users\\Cody\\Desktop\\Data_mining_w_pollitt\\data")


#Load csv with the row names specified
emp_limited <- read.csv(file = "just_qs_name.csv", header=TRUE, row.names = 1)

#####WORKING NAMES
#THIS WILL BE SHOWN
d <- dist(emp_limited) # euclidean distances between the rows
fit <- cmdscale(d,eig=TRUE, k=2) # k is the number of dim
fit # view results

# plot solution 
x <- fit$points[,1]
y <- fit$points[,2]
plot(x, y, xlab="Coordinate 1", ylab="Coordinate 2", 
     main="Metric	MDS",	type="n")
text(x, y, labels = row.names(emp_limited),col="black", cex=.7)



#K-Means w/ IRIS data
km <- kmeans(iris[,1:4], 3)
plot(iris[,1], iris[,2], col=km$cluster)
points(km$centers[,c(1,2)], col=1:3, pch=8, cex=2)
table(km$cluster, iris$Species)

#K-MEANS w/ my data
km <- kmeans(emp_limited, 9)
plot(emp_limited[,1], emp_limited[,2], col=km$cluster)
points(km$centers[,c(1,2)], col=1:3, pch=8, cex=2)
#this is close
table(km$cluster)
text(x, y, labels = row.names(emp_limited),col="259", cex=.7)

