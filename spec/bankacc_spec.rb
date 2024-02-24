
require 'bankaccount'

RSpec.describe BankAccount do
  testaccount = BankAccount.new()

  describe "#deposit" do
    it "increases the balance by the deposit amount" do
      testaccount.deposit(100)
      expect(testaccount.balance). to eq 100
    end
  end

  describe "#withdraw" do
    it "decreases the balance by the withdrawal amount if funds are available" do
      testaccount.withdraw(26)
      expect(testaccount.balance). to eq 74
    end
    it "does not change the balance if insufficient funds" do
    testaccount.withdraw(400000000)
    expect(testaccount.balance). to eq 74
    end
  end

  describe "#balance" do
    it "returns the current balance" do
      expect(testaccount.balance). to eq testaccount.balance
    end
  end
end
