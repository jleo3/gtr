require 'spec_helper'


describe Debit do

  describe ".create" do
    it "can create a Debit" do
      Debit.create!
    end
  end

end
