# Bank Tech Test Challenge User Stories
describe 'user stories' do
  let(:account) { Account.new }

  context 'Depositing' do
    # User Story 1
    # As  user
    # With excess cash
    # I would like to be able to deposit money

    it 'accepts the deposit of cash' do
      expect { account.deposit(20) }.not_to raise_error
    end

    it 'the balance increases by the deposited amount' do
      expect { account.deposit(20) }.to change { account.balance }.by 20
    end
  end

  context 'Withdrawing' do
    # User Story 2
    # As a user
    # Who sometimes runs short of cash
    # I would like to be able to withdraw money

    it 'allows the withdrawal of cash' do
      expect { account.withdraw(20) }.not_to raise_error
    end

    it 'the balance decreases by the withdrawn amount' do
      expect { account.withdraw(20) }.to change { account.balance }.by -20
    end
  end

  context 'Statement printing' do
    # User Story 3
    # As user
    # Who likes to know whats going on
    # I would like to be able to view a list of my transactions

    it 'stores a list of transactions' do
      expect(account.transaction_log.transactions.is_a?(Array)).to eq true
    end

    # User Story 4
    # As a user
    # Who isn't familiar with timestamps
    # I would like my statement to show dates as dd/mm/yy

    xit 'displays dates in dd/mm/yy format' do
    end
  end
end

# As user
# Who likes to know whats going on
# I would like to be able to view a list of my transactions

# As a user
# Who isn't familiar with timestamps
# I would like my statement to show dates as dd/mm/yy
