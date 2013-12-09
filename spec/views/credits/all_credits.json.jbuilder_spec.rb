require 'spec_helper'
require 'json'

describe "credits rendering" do
  before do
    Credit.make!
    Credit.make!
    @credits = Credit.all

    render "credits/all_credits"
    @rendered_json = JSON.parse(rendered)
  end

  it "will render creditor" do
    expect(rendered).to match(@credits.first.creditor)
    expect(rendered).to match(@credits.last.creditor)
  end

  it "will render credit amount" do
    expect(@rendered_json["credits"].first["amount"]).to eq(number_to_currency(@credits.first.amount))
    expect(@rendered_json["credits"].last["amount"]).to eq(number_to_currency(@credits.last.amount))
  end

  it "will render purchase date" do
    expect(@rendered_json["credits"].first["purchase_date"]).to eq(@credits.first.purchase_date.strftime("%a %e %b"))
    expect(@rendered_json["credits"].last["purchase_date"]).to eq(@credits.last.purchase_date.strftime("%a %e %b"))
  end

  it "will render account" do
    expect(@rendered_json["credits"].first["account"]).to eq(@credits.first.account.name)
    expect(@rendered_json["credits"].last["account"]).to eq(@credits.last.account.name)
  end
end
