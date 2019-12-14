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
