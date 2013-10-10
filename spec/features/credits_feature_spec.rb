require 'spec_helper'

describe "when I visit the credits index page" do
  it "will show me all of the credits" do
    @credit = Credit.make! creditor: "Gregory's"

    visit '/credits'

    page.should have_content @credit.creditor
  end
end
