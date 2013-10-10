require 'spec_helper'

describe "when I visit the credits index page" do
  it "will show me all of the credits" do
    visit '/credits'

    page.should have_content @credit
  end
end
