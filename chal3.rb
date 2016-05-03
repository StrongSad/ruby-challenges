### Challenge 3 - Bank Transactions

# Create a prompt that asks the user if they would like to display their balance,
# withdraw or deposit. Write three methods to perform these calculations and
# output the result to the user. Here is a sample output:

# ```
# Your current balance is
# 4000
# What would you like to do? (deposit, withdraw, check_balance)
# deposit
# How much would you like to deposit?
# 1000
# Your current balance is 5000
# Are you done?
# yes
# Thank you!
# ```

class Bank 
  attr_accessor :balance

  def initialize(balance)
    @balance = balance
  end

  def manage
    puts "do you want to deposit, withdraw or exit?"
    option = gets.chomp
    if option == "exit"
      puts "thank you for your business"
      return
    elsif option == "deposit"
      puts "How much would you like to deposit"
      amount = gets.chomp
      deposit(amount)
    elsif option == "withdraw"
      puts @balance
      puts "How much would you like to withdraw"
      amount = gets.chomp
      withdraw(amount)
    else
      puts "an error occured, choose something"
    end
  end

  def deposit(amount)
    @balance = @balance + amount.to_i
    puts @balance
    manage
  end

  def withdraw(num)
    if num.to_i > @balance
      puts "You cannot withdraw this amount of money, insufficient funds."
    else
      @balance = @balance - num.to_i
      puts @balance
      manage
    end
  end 
end

my_bank = Bank.new(3000)

my_bank.manage

































