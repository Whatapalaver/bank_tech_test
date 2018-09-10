require_relative 'transaction_log'

class Account
  attr_accessor :balance, :transaction_log

  def initialize(balance = 0.0, transaction_log = TransactionLog.new)
    @balance = balance
    @transaction_log = transaction_log
  end

  def deposit(deposit_amount)
    @balance += deposit_amount.to_f
  end

  def withdraw(withdrawal_amount)
    @balance -= withdrawal_amount.to_f
  end
end
