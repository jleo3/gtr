require 'spec_helper'

describe "when I visit the credits index page" do
  before do
    @account = Account.make!
  end

  it "will show me all of the credits" do
    @credit = Credit.make! creditor: "Gregory's",
                           amount: 2.40,
                           purchase_date: DateTime.parse("October 7th, 2013"),
                           account: @account
                           

    visit '/credits'

    page.should have_content @credit.creditor
    page.should have_content @credit.amount
    page.should have_content @credit.purchase_date.strftime("%a %e %b %l:%M %p")
    page.should have_content @credit.account.name
  end

  it "will let me add credits" do
    visit '/credits'

    fill_in "Creditor", with: "Gregory's"
    fill_in "Amount", with: "2.65"
    fill_in "Purchase date", with: DateTime.parse("November 2nd, 2013")
    select @account.name, from: "Account name"
    click_on "Create Credit"

    page.should have_content "Credits"
  end

  pending "should show defaults for date, account name"
end
