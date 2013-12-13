require 'spec_helper'

describe "when I hit the homepage", :type => :feature do
  before do
    @account = Account.make! name: "Checking", balance: 1000
    visit "/"
  end

  it "shows my checking account balance" do
    page.should have_content "Balance"
    page.should have_content "1000"
  end

  it "links to create account page" do
    click_link "Add an Account"

    page.should have_content "Create a new account"
  end

  it "links to account show page" do
    click_link @account.name

    page.should have_content "Account Information"
    page.should have_content @account.name
  end

  it "can navigate to credits index" do
    click_link "Credits"

    page.should have_content "Creditor"
  end

  it "can navigate to debits index" do
    click_link "Debits"

    page.should have_content "Debtor"
  end
end
