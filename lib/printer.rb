require 'date'

class Printer
  HEADER = %w[date credit debit balance].freeze
  DELIMITER = ' || '.freeze

  def print_statement(transactions)
    puts HEADER.join(DELIMITER)
    print statement_row(transactions)
  end

  def statement_row(transactions)
    row = ''
    transactions.reverse_each do |transaction|
      row << "#{transaction[:date].strftime('%d/%m/%y')}#{DELIMITER}#{transaction[:credit]}#{DELIMITER}#{transaction[:debit]}#{DELIMITER}#{transaction[:balance]}\n"
    end
    row
  end
end
