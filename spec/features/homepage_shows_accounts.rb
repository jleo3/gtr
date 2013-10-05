require 'spec_helper'

describe "when I hit the homepage", :type => :feature do
  it "shows my checking account balance" do
    visit "/"

    expect(page).to have_content "Balance"
  end
end
