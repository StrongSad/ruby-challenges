# Challenge 1 - Calculator

# Create a simple calculator that first asks the user what method they would like to use 
# (addition, subtraction, multiplication, division) and then asks the user 
# for two numbers, returning the result of the method with the two numbers. 
# Here is a sample prompt:

# ```
# What calculation would you like to do? (add, sub, mult, div)
# add
# What is number 1?
# 3
# What is number 2?
# 6
# Your result is 9

def multiply(num1, num2)
  product = num1 * num2
  puts product
end 

def divide(num1, num2)
  quotient = num1/num2
  puts quotient
end

def subtract(num1, num2)
  difference = num1 - num2
  puts difference
end

def addition(num1, num2)
  total = num1 + num2
  puts total
end


puts "what would you like to use? Mult, Div, Sub, Add"
method = gets.chomp
puts "what is your first number"
num1 = gets.chomp.to_f
puts "what is your second number"
num2 = gets.chomp.to_f


if(method == "mult")
  multiply(num1, num2)
elsif(method == "div")
  divide(num1, num2)
elsif(method == "sub")
  subtract(num1, num2)
elsif(method == "add")
  addition(num1, num2)
else
  puts "something went wrong bird brain"
end  






