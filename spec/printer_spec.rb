require 'printer'

describe Printer do
  subject(:printer) { Printer.new }
  let(:date) { Time.new(2018, 9, 11) }
  let(:transactions) { [{ date: date, credit: '20.00', balance: '20.00' }, { date: date, debit: '10.00', balance: '10.00' }] }

  it 'prints the statement' do
    output = "date || credit || debit || balance\n11/09/18 ||  || 10.00 || 10.00\n11/09/18 || 20.00 ||  || 20.00\n"
    expect { printer.print_statement(transactions) }.to output(output).to_stdout
  end
end
