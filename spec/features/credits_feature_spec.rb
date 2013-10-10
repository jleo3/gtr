require 'spec_helper'

describe "when I visit the credits index page" do
  it "will show me all of the credits" do
    @credit = Credit.make! creditor: "Gregory's",
                           amount: 2.40,
                           purchase_date: DateTime.parse("October 7th, 2013")
                           

    visit '/credits'

    page.should have_content @credit.creditor
    page.should have_content @credit.amount
    page.should have_content @credit.purchase_date.strftime("%a %e %b %l:%M %p")
  end
end
