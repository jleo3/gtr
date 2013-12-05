require 'spec_helper'
require 'json'

describe "credits rendering" do
  it "will render creditor" do
    2.times { |x| Credit.make! }
    @credits = Credit.all

    render "credits/all_credits"

    expect(rendered).to match(@credits.first.creditor)
    expect(rendered).to match(@credits.last.creditor)
  end

  it "will render credit amount" do
    Credit.make!
    @credits = Credit.all

    render "credits/all_credits"
    rendered_json = JSON.parse(rendered)

    expect(rendered_json["credits"].first["amount"]).to eq(number_to_currency(@credits.first.amount))
  end

  it "will render purchase date" do
    Credit.make!
    @credits = Credit.all

    render "credits/all_credits"
    rendered_json = JSON.parse(rendered)

    expect(rendered_json["credits"].first["purchase_date"]).to eq(@credits.first.purchase_date.strftime("%a %e %b"))
  end

end
