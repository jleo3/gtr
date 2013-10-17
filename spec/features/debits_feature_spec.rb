require 'spec_helper'

describe "when I visit the debits index page" do
  it "will show me all of the debits" do
    debit = Debit.make! account: Account.make!

    visit "/debits"

    page.should have_content debit.debtor
    page.should have_content debit.amount
    page.should have_content debit.debit_date.strftime("%a %e %b %l:%M %p")
  end
end
