require 'account.rb'
require 'module.rb'

# include this module
include HelloModule

my_account = BankAccount.new 'Dennis'
my_account.deposit 5

puts my_account.balance
my_account.withdraw 3
puts 'I am almost broke' if my_account.balance < 5


my_interest_account = InterestBearingAccount.new 'Lili', 3
my_interest_account.deposit 1000
my_interest_account.deposit_interest

puts my_interest_account.balance

# pass many args
my_interest_account.method_with_many_args "Hello", "me", "fast", "car"

# use a module
HelloModule::say_hello

begin
  x = 1 / 0 # Boom!
rescue ZeroDivisionError
  puts 'You tried to divide by zero'
end

if 1 == 0
  raise ZeroDivisionError
end

begin
  raise 'test exception!'
rescue RuntimeError
  puts 'This exception raising thing works'
end
