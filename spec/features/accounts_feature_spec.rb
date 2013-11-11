require 'spec_helper'

describe "when I visit account show page" do
  
  it "will show an account" do
    account = Account.make!

    visit "/accounts/#{account.id}"

    page.should have_content account.name
    page.should have_content "All Credits"
  end
end
