# Bank Tech Test Challenge User Stories
describe 'user stories' do
  let(:account) { Account.new }

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

  # User Story 2
  # As a user
  # Who sometimes runs short of cash
  # I would like to be able to withdraw money

  xit 'accepts the withdrawal of cash' do
    
  end

  # User Story 3
  # As user
  # Who likes to know whats going on
  # I would like to be able to view a list of my transactions

  xit 'prints a view of transactions' do
    
  end

  # User Story 4
  # As a user
  # Who isn't familiar with timestamps
  # I would like my statement to show dates as dd/mm/yy

  xit 'displays dates in dd/mm/yy format' do
    
  end

end

# As user
# Who likes to know whats going on
# I would like to be able to view a list of my transactions



# As a user
# Who isn't familiar with timestamps
# I would like my statement to show dates as dd/mm/yy
