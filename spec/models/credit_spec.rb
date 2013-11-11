require 'spec_helper'


describe Credit do
  before do
    Account.create! name: "Checking", balance: 1000.0
  end

  def valid_params
    { creditor: "Gregory's", 
      amount: 2.40, 
      purchase_date: DateTime.parse("October 7th, 2013"),
      account_id: Account.first.id }
  end

  describe "validations" do
    it { should validate_presence_of :creditor }
    it { should validate_presence_of :amount }
    it { should validate_presence_of :purchase_date }
    it { should validate_presence_of :account_id }

    describe "account_id" do
      it "will match an existing account" do

        credit = Credit.create!(valid_params)

        credit.account.id.should eq(Account.first.id)
      end
    end

  end

  describe "relations" do
    it { should belong_to :account }
  end

  describe ".create" do
    it "can create a Credit" do
      Credit.create! valid_params
    end
  end
end
