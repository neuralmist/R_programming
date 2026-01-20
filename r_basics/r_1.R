#1.create a vector
mixed_vector=c(4, 3.14, 'R', TRUE)

#2. identify the data type 
class(mixed_vector)


# Create a numeric vector witch consists of numbers from one to nine ####
numeric_vector=c(1,2,3,4,5,6,7,8,9);numeric_vector
# or
numeric_vector=seq(1,9,1);numeric_vector
# or
numeric_vector=1:9;numeric_vector



# Convert numeric to character ####
char_vector=as.character(numeric_vector);char_vector

#convert back to numeric ####
numeric_again=as.numeric(char_vector); numeric_again


# create a numeric vector 
numeric_vector=c(5, 12,22,12,18)

# create a logical vector
logical_vector=numeric_vector > 15
logical_vector


#create a numeric vector of length 10 with values from 1 to 10 
numeric_vector=1:10;numeric_vector

#create 3x3 matrix
matrix_3x3=matrix(1:9, nrow = 3, byrow = FALSE)
matrix_3x3

# Access the element in the second row and third column
element=matrix_3x3[2, 3]
element




