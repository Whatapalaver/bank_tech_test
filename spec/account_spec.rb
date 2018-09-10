require 'account'

describe Account do
  subject(:account) { described_class.new }

  context 'New Account' do
    it 'is an Account object' do
      expect(account.is_a?(Account)).to eq true
    end

    it 'responds to expected methods' do
      expect(account).to respond_to(:balance)
      expect(account).to respond_to(:deposit)
      expect(account).to respond_to(:withdraw)
      expect(account).to respond_to(:transaction_log)
    end

    it 'has a starting balance of zero' do
      expect(account.balance).to eq 0
    end

    it 'can be initiated with an existing balance' do
      another_new_account = Account.new(1000,TransactionLog.new)
      expect(another_new_account.balance).to eq 1000
    end
  end

  context 'making deposits' do
    it 'updates the balance when cash is deposited' do
      account.deposit(20)
      expect(account.balance).to eq 20
    end
    it 'updates the transaction log with the latest deposit' do
      
    end
  end

  context 'making withdrawals' do
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
end
