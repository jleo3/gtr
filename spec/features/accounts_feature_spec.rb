require 'spec_helper'

describe "when I visit account show page" do
  
  it "will show an account" do
    account = Account.make!

    visit "/accounts/#{account.id}"

    page.should have_content account.name
    page.should have_content "All Credits"
  end

  it "will create a new account" do
    visit "/accounts/new"

    fill_in "Name", with: "Savings"
    fill_in "Balance", with: 1200.40
    click_on "Create Account"
    
    expect(page).to have_content "Account Information"
  end
end
