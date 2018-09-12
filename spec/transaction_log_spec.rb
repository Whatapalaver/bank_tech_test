describe TransactionLog do
  subject(:transaction_log) { described_class.new }
  let(:deposit_transaction) { { date: date, credit: 20.00, balance: 20.00 } }
  let(:withdrawal_transaction) { { date: date, debit: 10.00, balance: 10.00 } }
  let(:date) { Time.new(2018, 9, 11) }

  context 'Stores transaction details:' do
    it 'deposits are stored in the log' do
      transaction_log.add_transaction(deposit_transaction)
      expect(transaction_log.transactions).to eq [{ date: date, credit: 20.00, debit: 0.00, balance: 20.00 }]
    end
    it 'withdrawals are stored in the log' do
      transaction_log.add_transaction(withdrawal_transaction)
      expect(transaction_log.transactions).to eq [{ date: date, credit: 0.00, debit: 10.00, balance: 10.00 }]
    end
  end
end
