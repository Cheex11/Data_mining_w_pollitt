library(ISLR)
library(tree)

attach(Carseats)

###
range(Sales)#0-16
# Creates a categorical variables based on Sales
High = ifelse(Sales >=8, "Yes", "No")
# appends High to Carseat dataset, and now our dataset is ready
Carseats = data.frame(Carseats, High)

#Get rid of sales
Carseats = Carseats[,-1]


## Split data into testing and training 
set.seed(2)
train = sample(1:nrow(Carseats), nrow(Carseats)/2)
test = -train
training_data = Carseats[train,]
testing_data = Carseats[test, ]
testing_High = High[test]



#WTF do these look like?
head(train)
head(test)
head(training_data)
head(High)


# fit tree model using training data

tree_model = tree(High~., training_data)

plot(tree_model)
text(tree_model, pretty = 0)


# Check how the model is doing using the test data

tree_pred = predict(tree_model, testing_data, type = "class")
mean(tree_pred != testing_High) #28.5%

###Prune the tree

##cross validation to check where to stop pruning 
set.seed(3)

cv_tree = cv.tree(tree_model, FUN = prune.misclass)
names(cv_tree)

#Plot tree errors
plot(cv_tree$size,
     cv_tree$dev,
     type = "b")

##Prune the tree
pruned_model = prune.misclass(tree_model, best=9)
plot(pruned_model)
text(pruned_model, pretty = 0)


#Check how it is doing

tree_pred = predict(pruned_model, testing_data, type="class")
mean(tree_pred != testing_High)
