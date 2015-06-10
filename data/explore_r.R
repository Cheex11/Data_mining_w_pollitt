#Set working directory
setwd("C:\\Users\\Cody\\Desktop\\Data_mining_w_pollitt\\data")

# Load raw data
data <- read.csv("Employees.csv", header=TRUE)

#Add a variable to the data set
data.count <- data.frame(count = rep("None", nrow(count)),count[,])

# Asertain structure of R object
str(data)


#Convert things to factors
data$SamHater <- as.factor(data$SamHater)
data$Travel <- as.factor(data$Travel)
data$Exercise <- as.factor(data$Exercise)
data$Beilber <- as.factor(data$Beilber)
data$Confidence <- as.factor(data$Confidence)
data$Spiritual <- as.factor(data$Spiritual)
data$Extroverted  <- as.factor(data$Extroverted)
data$DogPerson <- as.factor(data$DogPerson)
data$Drinker <- as.factor(data$Drinker)
data$Sleeper <- as.factor(data$Sleeper)
data$tenure <- as.factor(data$tenure)
data$average_bustle <- as.factor(data$average_bustle)

#Take a look at Travel data
table(data$Travel)
table((data$SamHater))