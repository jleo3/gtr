require 'spec_helper'

describe "when I visit the debits index page" do
  it "will show me all of the debits" do
    visit "/debits"

    page.should have_content @debits
  end
end
