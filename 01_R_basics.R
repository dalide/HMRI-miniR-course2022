###################################
###### Creating objects in R ######
###################################

# you can run any code in console, but not so helpful if you want to revisit your work for any reason, we shall use a script. 
# arithmetic operations
3+5
7-9
6*4
12/7

# assign values to objects
weight_kg <- 55
weight_kg 

# on mac, Option + - gives <-
# on PC, Alt + - give <-

# assigning a value to an object, R does not print anything, you can force R to print the value by using parentheses or by typing the object name
weight_kg <- 55
(weight_kg <- 55)


# now R has weight_kg in memory, we can do arithmetic with it
2.2 * weight_kg # convert to pounds

# we can change an object's value
weight_kg <- 69
2.2 * weight_kg

# assigning a value to one object does not change the values of the other objects
weight_lb <- 2.2 * weight_kg
weight_lb
weight_kg <- 1000
weight_lb


# it is a good habit to write comment for explanation

# Challenge: what are the values after each Statement? 
mass <- 50  # mass? 
age <- 122  # age?
mass <- mass * 2.0   # mass? 
age <- age - 20  # age?
mass_index <- mass/age  # mass_index

# Functions and their arguments
weight_kg <- sqrt(10)

round(3.14159)
args(round)
?round  # use question mark or type round in the help page search

round(3.14159, digits = 2)
round(3.14159, 2)
round(digits = 2, x = 3.14159)


####################################
###### Vectors and data types ######
####################################

# A vector is the most common and basic data type in R. It is composed by a series of values, which can be either numbers or characters. We can assign a series of values to a vector using the c() function. 
weight_g <- c(50, 60, 65, 82)
weight_g

animals <- c('mouse', 'rat', 'monkey')
animals

# There are many functions that allow you to inspect the content of a vector
length(weight_g)
length(animals)

class(weight_g)
class(animals)


str(weight_g)
str(animals)


# you can use the c() function to add other elements to your vector 

weight_g

weight_g <- c(weight_g, 90)

weight_g

weight_g <- c(30, weight_g)

weight_g

# An atomic vector is the simplest R data type and is a linear vector of a single type. There are 6 main atomic vector types: 
# character
# numeric (double)
# logical : TRUE, FALSE
# integer
# complex
# raw 

typeof(weight_g)
class(weight_g)

str(weight_g)

# Challenge
# 1. What happens if we try to mix these types in a single vector? R implicitly converts them to all be the same type

num_char <- c(1,2,3,'holiday')
num_logical <- c(1,2,3, TRUE)
char_logical <- c('a','b','c', TRUE)
triky <- c(1,2,3,'4')

class(num_char)
class(num_logical)
class(char_logical)
class(triky)



# 2. How many values in combined_logical are 'TRUE' (as a character) in the following
combined_logical <- c(num_logical, char_logical)
combined_logical


# hierarchy of coercion (conversion) 
# logical -> numeric -> character <- logical

################################
###### Subsetting vectors ######
################################

# If we want to extract one or several values from a vector, we must provide one or several indices in square brackets. 

animals <- c('mouse', 'rat', 'dog', 'cat')
animals[2]

animals[c(3,2)]

more_animals <- animals[c(1,2,3,2,1,4)]
more_animals

# Conditional subsetting
# another common way of subsetting is by using a logical vector. TRUE will select the element with same index, while FALSE will not. 

weight_g <- c(21, 34, 39, 54, 55)
weight_g[c(TRUE, FALSE, FALSE, TRUE, TRUE)]

# select only the values above 50, will return logical with TRUE for the indices that meet the condition
weight_g > 50 

weight_g[weight_g > 50]

# you can combine multiple tests using & or |
weight_g[ weight_g > 30 & weight_g < 50 ]

weight_g[ weight_g <= 30 | weight_g == 55]

weight_g[ weight_g >= 30 & weight_g == 21]


# a common task is to search for certain strings in a vector. The function %in% allows you to test if any of the elements of a search vector are found
animals <- c("mouse","rat","dog","cat","cat")

animals[ animals == 'cat' | animals == 'rat'] # return both cat and rat

animals[ animals %in% c("rat","cat","dog","duck","goat","bird","fish")]


# Challenge
# why "four" > "five" return TRUE
"four" > "five"


##########################
###### Missing Data ######
##########################

# Missing data are represented in vectors as NA. When doing operations on numbers, most functions will return NA if the data you are working with include missing values. 

heights <- c(2, 4, 4, NA, 6)
mean(heights)
max(heights)
mean(heights, na.rm = TRUE)
max(heights, na.rm = TRUE)


heights[!is.na(heights)]
na.omit(heights)

heights[complete.cases(heights)]

# Challenge
# 1. using this vector of heights in inches, create a new vector called heights_no_na, with the NAs removed.
heights <- c(63, 69, 60, 65, NA, 68, 61, 70, 61, 59, 64, 69, 63, 63, NA, 72, 65, 64, 70, 63, 65)

# 2. Use the function median() to calculate the median of the heights vector. 

# 3. Use R to figure out how many people in the set are taller than 67 inches. 


# Exercise
# The following equal length vectors represent data from 8 observations from an experiment involving trapping animals in the wild and recording their species using a 2 digit id and their weight in grams

record_id <- c(1,2,3,4,5,6,7,8)
weights <- c(51, 64, 28, 32, 68, 55, 36, 41)
species_id <- c("AB","AB","AM","Am","AB","AB","AM","AM")

# Question: What are the record IDs of animals that have weights greater than 30 and have the species id 'AB' ? 



##########################
###### Seeking Help ######
##########################

# Searching function documentation with ? and ??
?mean
??mean

# Automatic code completion

# Package vignettes and cheat sheets
browseVignettes()
# Rstudio -> help -> cheat sheets


# Finding more functions and packages
# rdocumentation.org

# Dealing with error messages

(weight_kg <- 55
  
# Asking for help
# Goodle search
# Stack Overflow/Github/R-help mailing list

