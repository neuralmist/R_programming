#diabetes dataset
library(MASS)

data(Pima.tr)

df=Pima.tr

df

#head - returns from top
head(df,5)


#tail - returns rows from bottom
tail(df,10)

#str- returns structure
str(df)

#dimension (row,columns)
dim(df)

#number of columns in dataframe
ncol(df)

#number of rows in dataframe
nrow(df)

# outcomes of types column in table format 
table(df$type)

#summary grouped
aggregate(bmi ~ type, data = df, mean)

aggregate(age ~ type, data = df, mean)

#histogram
hist(df$glu,
     main = "Distribution of glucouse levels",
     xlab = "Glucouse",
     col = "blue")


#boxplot
boxplot(df$bmi,
        horizontal = TRUE,
        main = "BMI",
        col = "lightgreen")

#plotting BMI vs Glucouse
plot(df$bmi, df$glu,
     xlab = "BMI",
     ylab = "Glucose",
     main = "BMI vs Glucose")
