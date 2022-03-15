############ R as calculator #########
######################################

5 + 3 #run (by clicking on "Run" or use shortcut key [Ctrl/command + Enter])
5 - 3
5*3
#3 types of division
5/3 #normal division
5%/%3 #integer division
5%%3 #modulus division
5^2 #power
5**2 #power
((5 -4) + (3 + 4))*3
log(10) # base e = 2.718
log10(100) #here, base = 10
log10(1000)

log10(100); log10(1000)

a <-  5 #Assigning value to a variable
#It is read as "a gets the value 5"
b <- 3
c <- a + b
c
d <- a - b
e <- a*b
f <- a/b
log(a)
log10(a)
g <- a + 10

### Logical operations ###
# =, !=, <, >, <=, >=, &, |
#Operations will answer in TRUE, FALSE
a <- b
a == b
a > b
a < b
a <= b
a >= b
a != b
b != a
a <= b & a >= b
a <= b | a >= b 

#######################
#case study
a <- 5
b <- 12
a = b
#You were supposed to check the equality of 'a' and 'b'. 
#a) What happened here?
#b) What is the definition of this phenomenon?
#c) How to check the logical equality?

#Answer
#a
#Here, variable a gets updated with the value of b. Equal sign is just same as 
#assignment operator ( <- )

#b
#It is called value updating

#c
#The logical equality should be checked with double equal sign. So, 
a == b

