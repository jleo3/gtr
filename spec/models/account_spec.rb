require 'spec_helper'

describe Account do
  describe "validations" do
    it { should validate_presence_of :name }
    it { should validate_uniqueness_of :name }

    it { should validate_presence_of :balance }
  end

  describe "relations" do
    it { should have_many :credits }
  end

  it "should create a new instance" do
    Account.create! name: "Checking", balance: 1000.00
  end
end
