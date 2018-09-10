class Account
  attr_accessor :balance

  def initialize
    @balance = 0
  end

  def deposit(deposit_amount)
    @balance += deposit_amount
  end

  def withdraw(withdrawal_amount)
    
  end
end
