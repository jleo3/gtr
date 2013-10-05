require 'spec_helper'

describe "when I hit the homepage", :type => :feature do
  before do
    @account = Account.make! name: "Checking", balance: 1000
  end

  it "shows my checking account balance" do
    visit "/"

    expect(page).to have_content "Balance"
    expect(page).to have_content "1000"
  end

  it "links to account show page" do
    visit "/"
    click_link @account.name

    expect(page).to have_content "Account Information"
    expect(page).to have_content @account.name
  end
end
