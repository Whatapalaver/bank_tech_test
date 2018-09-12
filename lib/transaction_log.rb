

class TransactionLog
  attr_accessor :transactions

  def initialize
    @transactions = []
  end

  def add_transaction(date:, credit: 0, debit: 0, balance: 0)
    @transactions << {
      date: date,
      credit: credit.to_f,
      debit: debit.to_f,
      balance: balance
    }
  end
end
