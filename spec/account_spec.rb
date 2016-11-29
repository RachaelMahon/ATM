require 'account.rb'

describe Account do

  subject(:account) { described_class.new}

context "Account behaviour - "

    it "account initialized with an empty balance" do
      expect(account.balance).to eq(0)
    end

    it "balance increases by amount deposited" do
      account.deposit("01/01/2015",1000)
      expect(account.balance).to eq(1000)
    end

    it "balance decreases by amount deposited" do
      account.deposit("01/01/2015",1000)
      account.withdraw("01/02/2015",500)
      expect(account.balance).to eq(500)
    end


    it "deposit stores transaction data" do
      account.deposit("01/01/2015", 1000)
      expect(account.transactions).to include({:date => "01/01/2015", :credit => 1000, :debit => "", :balance => 1000})
    end

    it "withdrawal stores transaction data" do
      account.deposit("01/01/2015", 2000)
      account.withdraw("01/02/2015", 1000)
      expect(account.transactions).to include({:date => "01/02/2015", :credit => 1000, :debit => "", :balance => 1000})
    end

end
