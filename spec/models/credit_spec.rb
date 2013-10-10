require 'spec_helper'


describe Credit do
  describe "validations" do
    it { should validate_presence_of :creditor }
    it { should validate_presence_of :amount }
    it { should validate_presence_of :purchase_date }
  end

  describe ".create" do
    it "can create a Credit" do
      Credit.create! creditor: "Gregory's", 
                     amount: 2.40, 
                     purchase_date: DateTime.parse("October 7th, 2013")
    end
  end
end
