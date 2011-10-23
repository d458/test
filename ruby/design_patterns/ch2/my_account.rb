require 'account.rb'

my_account = BankAccount.new 'Dennis'
my_account.deposit 5

puts my_account.balance

my_interest_account = InterestBearingAccount.new 'Lili', 3
my_interest_account.deposit 1000
my_interest_account.deposit_interest
puts my_interest_account.balance
