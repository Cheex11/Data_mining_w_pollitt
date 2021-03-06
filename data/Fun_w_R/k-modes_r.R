### a 5-dimensional toy-example:
## generate data set with two groups of data:
set.seed(1)
x <- rbind(matrix(rbinom(250, 2, 0.25), ncol = 5),
           matrix(rbinom(250, 2, 0.75), ncol = 5))
colnames(x) <- c("a", "b", "c", "d", "e")


## run algorithm on x:
(cl <- kmodes(x, 2))

## and visualize with some jitter:
plot(jitter(x), col = cl$cluster)
points(cl$modes, col = 1:5, pch = 8)


#
#
#Make my own matrix
x1_m <- as.matrix(x1) 

## run algorithm on x:
(cl <- kmodes(x1_m, 12))

## and visualize with some jitter:
plot(jitter(x1_m), col = cl$cluster)
points(cl$modes, col = 1:10, pch = 8)






