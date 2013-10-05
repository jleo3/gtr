require 'spec_helper'

describe Account do

  it "should create a new instance" do
    Account.create! name: "Checking"
  end
end
