require 'date'

class Printer

  def print_statement(transactions)
    statement = []
    statement << 'date || credit || debit || balance'
    transactions.reverse_each do |transaction|
      statement.push(statement_row(transaction))
    end
    puts statement.join("\n")
  end

  private

  def statement_row(transaction)
    row = transaction.map do |_key, value|
      
      if value.is_a? Time
        value.strftime('%d/%m/%Y')
      elsif value == 0.0
        ''
      else
        format_float(value)
      end
    end
    row.join(' || ')
  end

  def format_float(amount)
    format('%.2f', amount)
  end
end
