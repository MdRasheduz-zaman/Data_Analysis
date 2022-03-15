############ 6 basic data types in R ####################
#########################################################
#according to their complexity level
#raw < logical < integer < double/real number < complex < character/string
#logicals: TRUE, FALSE
#Integer: 1L, 2L, 3L, 4L, 5L, -4L, -5L
#Double: 1, 2, 3, 4, 5, -4, -5, 1.1, 2.5678, 3.5
#Complex: 1 + 2i, 2 - 3i
#Character: "a", 'b', "c", "d", "1", "2", "3", " a is big"

#raw: code bytes
#Let's see some examples
charToRaw("R for Data Science")
intToBits(1)
intToBits(2)
intToBits(3)

#################### Vector ################################
############################################################
#Vector: Basic data structure having elements of same data type (atomic)
#Vector is 1 dimensional
age <- c(7, 8, 9, 10, 11, 12) #vector of double
age2 <- 7:10 #vector of integer

#Index in vector
age[1] #first element in the vector age
age[3] #third element in the vector age
age[5] #fifth element in the vector age

age3 <- age + age2 #vectorized summation (index-wise addition)

die <- c(1, 2, 3, 4, 5, 6) #as double
Die <- 1:6 #as integer

die_sum <- die + Die
die_sum[3]

die*die
die*1:6

#Naming convention: 
#no number in the beginning
90 <- 90 #naming not possible
#No special characters like _, -, ?, !
_a <- 90 #naming not possible
-a <- 90 #naming not possible
?a <- 90 #naming not possible

#But can be solved by using back tick (``)
`90` <- 90 #it works

weight <- c(3.5, 5, 5.5, 6, 9, 10)
int <- c(1L, 2L, 3L, 4L, 5L, -2L, -5L)

#Some useful functions
mode(weight)
mode(int)

length(weight) #total number of observations
length(int)
is(weight) #type of weight
is(int)
min(weight) #minimum weight
max(weight) #maximum weight
range(weight) #range of weight
mean(weight) #average weight
sd(weight) #standard deviation of weight
var(weight) #variance of weight
variance <- sd(weight)**2
variance
sqrt(weight) #square root of weight
summary(weight) #summary

SEM <- sd(weight)/sqrt(length(weight)) #standard error of mean
SEM

a <- c("a", "1", "A is big") #string/character vector
length(a)

nucleotide <- c("A", "T", "G", "C") #string
nucleotide[3]
is(nucleotide)
mode(nucleotide)
summary(nucleotide)

char <- c("1", "2", "3", "4") #string 
years <- c("2000", "2001", "2002", "2003") #string

DNA <- c("ATGTGT", "GTACCC", "TGCA")
DNA[2]

string <- c("A", "B", "C", 1, "D", "E") 
#1 will be made a character. It is called coercion

logicals <- c(TRUE, FALSE, TRUE, TRUE, FALSE) #vector of logicals 
number <- as.numeric(logicals) #casting

char2 <- c("1", "2", "3", "4")
as.numeric(char2)
as.integer(char2)

name <- c("a", "b", "c")
as.numeric(name)

name2 <- name
name2[2] <- "B"  #copy-on-modify

name[2] <- "d"  #copy in place

############## Try to understand the question ##############
#https://stackoverflow.com/questions/58271856/is-there-a-way-to-disable-auto-coercion-in-r-when-comparing-different-types
#Recently, I found an error in my R code which is caused by the auto coercion by R. 
#I accidentally compare a vector of string with an integer and the code runs 
#successfully with most of the right comparison, which makes it very hard to know 
#the mistake at the first place. So I want to know is there anything I can do to 
#disable this auto coercion and raise an error just like what python does.

#This is how R compares two variable with different types:
#If the two arguments are atomic vectors of different types, one is coerced to the type of the other, 
#the (decreasing) order of precedence being character, complex, numeric, integer, logical and raw.


