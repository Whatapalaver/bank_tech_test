

class TransactionLog
  attr_accessor :transactions

  def initialize
    @transactions = []
  end

  def add_transaction(transaction)
    @transactions << transaction
  end
end
