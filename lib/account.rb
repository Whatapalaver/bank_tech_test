require_relative 'transaction_log'
require 'date'

class Account
  attr_accessor :balance, :transaction_log

  def initialize(balance = 0.0, transaction_log = TransactionLog.new)
    @balance = balance
    @transaction_log = transaction_log
  end

  def deposit(deposit_amount, date = Time.now)
    @balance += deposit_amount.to_f
    @transaction_log.add_transaction({ date: date, credit: deposit_amount, balance: @balance })
  end

  def withdraw(withdrawal_amount, date = Time.now)
    @balance -= withdrawal_amount.to_f
    @transaction_log.add_transaction({ date: date, debit: withdrawal_amount, balance: @balance })
  end
end
