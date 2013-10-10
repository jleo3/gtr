require 'spec_helper'

describe Credit do
  describe ".create" do
    it "can create a Credit" do
      Credit.create!
    end
  end
end
