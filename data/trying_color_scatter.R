## load libraries
library(ggplot2) # for charting
library(vegan) # for jaccard

## simulate some data - 1200 rows, 5 features/cols/fields
features <- read.csv(file = "just_qs_name.csv", header=TRUE, row.names = 1)


## calculate jaccard distances
d <- vegdist(features, method = "jaccard")

## Multidimensional Scaling
fit <- cmdscale(d,eig=TRUE, k=2)


# prepare the data for plotting
mds <- data.frame(
  x    = fit$points[,1],
  y    = fit$points[,2],
  name = rownames(features))


# plot
ggplot(mds, aes(x=x,y=y,label=name )) + geom_text(size=3)

## bonus visualization! - a dendrogram
fit <- hclust(d, method="ward")
plot(fit)