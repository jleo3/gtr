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
      Debit.create!
    end
  end

end
