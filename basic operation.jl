# Printing in Julia
println("print something")

# Class / type of variable
x = 1
typeof(x)

y = "str"
typeof(y)

# Julia math operators similar to R
# sum
3 + 3
# substruct
10 - 5
# product
10 * 2
# quotient
10 / 2
# power
10 ^ 2
# modulus
13 % 2


# Working with strings
s1 = "example 1"
# Using double qutation alow to use text with qutation
s2 = """example 2"""
s3 = """using str with "qutation"  """

# Can use the $ sign to insert existing variables into a string
# and evaluate expression within a string

v1 = "World"
v2 = 10
println("Hellow $v1 !")
println("The value is $v2")
println("The value is $(v2 + v2)")

# string function

string("string 1 ", "string 1")
string("string ", 1, " string ", 2)


# String interpolation
str1 = "string 1 "
str2 = "string 2"

str1 * str2
"$str1$str2"

# Data structures
#------------------------------
# Dictionaries are not ordered
# Tuples and arrays are ordered
# Tuples are imutable

# Dictionaries

full_name = Dict("Jimmy" => "Page", "Robert" => "Plant")
full_name

full_name["Jimmy"]

# Adding value for the dict
full_name["John"] = "Bonham"

# pop! function delete value for the dict
pop!(full_name, "John")
full_name

# Tuples
mylist = ("one", "two", "three")
typeof(mylist)

mylist[1]
mylist

# Arrays
letters = ["A", "B", "c"]
numbers = [1, 2, 3]

letters[3]
letters[3] = "C"

letters[3]

# The push! function add value to the array
push!(numbers, 4)
numbers
pop!(numbers)

# Nested array
numbers = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
numbers

# rand function create a random set of arrays
rand(4, 3)


# Loops
#------------------------------
# while loop
n = 0
while n < 10
    n += 1
    println(n)
end

# for loop
for n in 1:10
    println(n)
end

# Example for nested for loop
# creating a 5X5 zeros matrix
# the zeroes function create a matrix of zeros
m, n = 5 , 5

# Method A
A = zeros(m, n)
A

for i in 1:m
    for j in 1:n
        A[i, j] = i + j
    end
end

A

# Method B
B = zeros(m, n)
for i in 1:m, j in 1:n
    B[i, j] = i + j
end

B

# Method C

C = [i + j for i in 1:m, j in 1:n]
C

# Conditionals
# if/else
x = 10
y = 5

if x > y
    x
else
    y
end

# ternary operator
(x > y) ? x : y

(x > y) && println("$x is larger than $y")
(x < y) && println("$x is smaller than $y")

# Functions
# Declearing function
function f(x)
    x^2
end

f(2)

# Alternatively, can declare the function as follow

f2(x) = x^2

f2(2)

# Anonymous function
f3 = x -> x^2
f3(2)

# Duck-typing in Julia
# Julia function will work on any type of input as long as it make sense

A = rand(3,3)
A
f(A)
f3(A)

# Mutating vs non-mutating functions
# the different between functions followed by ! and without

v = [2, 3, 1]
v
sort(v)
# the content (or the order of v) did not changed
v

sort!(v)
v

# Broadcasting
# By placing . between any function name and its argument list,
# we tell that function to broadcast over the elemnts of the input objects

A = [i + 3 * j for j in 0:2, i in 1:3]
f(A)
B = f.(A)

# Packages
# Installing packages can be done with the following:
# Pck.add("package_name")
# Loading package is done with
# using package_name

Pkg.add("Colors")

using Colors
