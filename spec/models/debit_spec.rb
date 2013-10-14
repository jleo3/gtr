require 'spec_helper'


describe Debit do
  describe "validations" do
    it { should validate_presence_of :debtor }
    it { should validate_presence_of :amount }
    it { should validate_presence_of :debit_date }
  end

  describe "relations" do
    it { should belong_to :account }
  end

  describe ".create" do
    it "can create a Debit" do
      Debit.create! debtor: "Credit Suisse",
                    amount: 3500.00,
                    debit_date: DateTime.parse("October 7th, 2013")
    end
  end

end
