class Account
  attr_accessor :balance

  def initialize
    @balance = 0.00
  end

  def deposit(deposit_amount)
    @balance += deposit_amount.to_f
  end

  def withdraw(withdrawal_amount)
    @balance -= withdrawal_amount.to_f
  end
end
