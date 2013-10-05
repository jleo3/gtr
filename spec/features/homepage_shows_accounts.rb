require 'spec_helper'

describe "when I hit the homepage", :type => :feature do
  it "shows my checking account balance" do
    account = Account.make! balance: 1000

    visit "/"

    expect(page).to have_content "Balance"
    expect(page).to have_content "1000"
  end
end
