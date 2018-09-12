require 'account'

describe Account do
  subject(:account) { described_class.new(0, transaction_log, printer) }
  let(:transaction_log) { double :transaction_log, transactions: [] }
  let(:transaction) { [] }
  let(:printer) { double :printer, print_statement: "date || credit || debit || balance\n09/11/2018 ||  || 15.00 || 15.00 || \n11/09/2018 || 30.00 ||  || 30.00\n" }

  context 'New Account' do
    it 'has a starting balance of zero' do
      expect(account.balance).to eq 0
    end

    it 'can be initiated with an existing balance' do
      another_new_account = Account.new(1000, TransactionLog.new)
      expect(another_new_account.balance).to eq 1000
    end
  end

  context 'making deposits' do
    before do
      allow(transaction_log).to receive(:add_transaction) { transaction }
    end
    it 'updates the balance when cash is deposited' do
      account.deposit(20)
      expect(account.balance).to eq 20
    end
    it 'updates the transaction log with the latest deposit' do
    end
  end

  context 'making withdrawals' do
    before do
      allow(transaction_log).to receive(:add_transaction) { transaction }
    end

    it 'updates the balance when cash is withdrawn' do
      account.deposit(20)
      account.withdraw(10)
      expect(account.balance).to eq 10
    end

    it 'sends the balance negative when more cash than is available is withdrawn' do
      account.deposit(20)
      account.withdraw(30)
      expect(account.balance).to eq -10
    end
  end

  context 'printing statements' do
    it 'outputs the transaction log' do
      expect(account.print_statement).to eq "date || credit || debit || balance\n09/11/2018 ||  || 15.00 || 15.00 || \n11/09/2018 || 30.00 ||  || 30.00\n"
    end
  end
end
