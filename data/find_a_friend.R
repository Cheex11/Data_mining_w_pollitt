just_qs_no_key = just_qs

str(just_qs)

str(mtcars)

rownames(mtcars)
rownames(mtcars[1,])



rownames(just_qs_no_key) <- just_qs_no_key[,1]
just_qs_no_key <- just_qs_no_key[,-1]



x <- just_qs_no_key["241",]
y <- just_qs_no_key["214",]


dist(rbind(x,y))



d <- dist(as.matrix(just_qs_no_key))
hc <- hclust(d)
plot(hc)
