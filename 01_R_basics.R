###################################
###### Creating objects in R ######
###################################

# you can run any code in console, but not so helpful if you want to revisit your work for any reason, we shall use a script. 
3+5
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


####################################
###### Vectors and data types ######
####################################




################################
###### Subsetting vectors ######
################################



##########################
###### Missing Data ######
##########################



##########################
###### Seeking Help ######
##########################


