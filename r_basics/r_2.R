
#load dataset into a variable 

data=mtcars
data

#dimension
dim(data)

#names of column 
names(data)

#head and tail of dataset #returns top 6 and bottom 6 from the dataset
head(data)
tail(data)


# str() -shows the summary of object, data type and preview
str(data)

#summary <- provides the summary statistics of each column
summary(data)

# check correlation
cor(data$mpg, data$wt)



#lets plot

library(ggplot2)

ggplot(data, aes(x = wt, y = mpg)) +
  geom_point() +
  labs(title = "car weightage vs mileage",
       x = "weight(1000  lbs)",
       y = "miles per gallon")

# historgram

ggplot(data, aes(x = mpg)) +
  geom_histogram(bins = 10) +
  labs(title = "mileage distribution")


#boxplot to detect outlier
boxplot(data$mpg,horizontal=TRUE,main = "Boxplot of Mileage")
