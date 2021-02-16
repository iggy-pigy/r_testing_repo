cardio_data <- read.csv("Cardiotocographic.csv", header= TRUE)
# explore the cardio data
names(cardio_data)
head(cardio_data)
tail(cardio_data)
summary(cardio_data)

#check the dimention of the cardio data dataset
dim(cardio_data)

# as.factor function convert the NSP column into a factor column.
cardio_data$NSPF <- as.factor(cardio_data$NSP)

# building a Decision Tree
# will use set.seed() function to generate a sequence of random numbers
set.seed(123)
# create a random sample
pd <- sample(2, nrow(cardio_data),replace=TRUE, prob=c(0.8,0.2))
pd
# create train data
train <- cardio_data[pd==1,]
#create validate data
validate <- cardio_data[pd==2,]
