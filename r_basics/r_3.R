#load built in data airquality
data=airquality
data


#head and tail of dataset
head(data)

tail(data)

#str
str(data)

#dimension 
dim(data)

#names of columns
names(data)

#summary of dataset
summary(data)

#check missing values
is.na(data)

#to check total number of missing values in each 
colSums(is.na(data))

# replace NA in ozone with mean value of ozone
data$Ozone[is.na(data$Ozone)]=mean(data$Ozone,na.rm=TRUE)

#replace NA in solar column with mean
data$Solar.R[is.na(data$Solar.R)]=mean(data$Solar.R,na.rm=TRUE)

#now lets check again if the missing values are filled
colSums(is.na(data))


#histogram
hist(data$Ozone,
     main="ozone level distribution",
     xlab="ozone level",
     ylab="frequency",
     col="red")

#boxplot
boxplot(data$Temp,
        main = "boxplot of temperature",
        horizontal = TRUE,
        col = "green")


# checking if there is any relation between temp and ozone 
plot(data$Temp, data$Ozone,
     xlab = "temperature",
     ylab = "ozone",
     main = "Temperature VS Ozone")

#same for wind speed and ozone level
plot(data$Wind,data$Ozone,
     xlab = "wind speed",
     ylab = "ozone",
     main = "wind speed vs ozone")


