### Challenge 4 - Guessing Game

# Create a program that asks the user to guess a number between 1 and 100. 
# Once the user guesses a number, the program should say, higher, lower, or 
# tell the user that he got the number correct.  The user should continue to make guesses 
# until he guesses correctly. Also, once the user guesses correctly, 
# the program should print the number of guesses needed to arrive at the correct answer. 
# Below is sample output:

# ```
# Guess a number between 1 and 100
# 50
# The number is lower than 50.  Guess again
# 25
# The number is lower than 25.  Guess again
# 13
# The number is higher than 13.  Guess again
# 20
# The number is lower than 20.  Guess again
# 17
# The number is higher than 17.  Guess again
# 18
# The number is higher than 18.  Guess again
# 19
# You got it in 7 tries
# ```

class Guess_that_number 
  attr_accessor :random_number

  def your_guess
    puts "guess a number between 1 and 100!"
    guess = gets.chomp.to_i
    check()
  end

  def generate_number
    @random_number = rand(1..100)
  end

  def check(num)
    puts @random_number
    count = 0
    if num.to_i > @random_number
      puts "Your guess is too high, guess again"
      count = count + 1
    elsif num.to_i < @random_number 
      puts "your guess was too low, guess again"
      count = count + 1
    elsif num.to_i == @random_number
      puts "What the What!!!!! Spot on brotha"
      puts count
    else
      puts "somethings not right.... guess again, your guess count is going up though"
      count = count + 1
    end
  end
end

my_guess = Guess_that_number.new

my_guess.your_guess










































