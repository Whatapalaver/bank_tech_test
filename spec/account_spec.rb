require 'account'

describe Account do

  subject(:account) { described_class.new }

  it 'is an Account object' do
    expect(account.is_a?(Account)).to eq true
  end

  it 'responds to expected methods' do
    expect(account).to respond_to(:balance)
    expect(account).to respond_to(:deposit)
    expect(account).to respond_to(:withdraw)
  end

  it 'has a starting balance of zero' do
    expect(account.balance).to eq 0
  end

  context "making deposits" do
    it "updates the balance when cash is deposited" do
      account.deposit(20)
      expect(account.balance).to eq 20
    end
  end

  context "making withdrawals" do
    it "updates the balance when cash is withdrawn" do
      account.deposit(20)
      account.withdraw(10)
      expect(account.balance).to eq 10
    end

    it "sends the balance negative when more cash tna is available is withdrawn" do
      account.deposit(20)
      account.withdraw(30)
      expect(account.balance).to eq -10
    end
  end

end
