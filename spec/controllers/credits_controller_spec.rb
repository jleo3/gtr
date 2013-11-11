require 'spec_helper'

describe CreditsController do
  before do
    @account = Account.create! name: "Checking", balance: 1000.0
    @valid_fields = 
      { 
        creditor: "Gregory's",
        amount: "2.65",
        purchase_date: "11/10/2013",
        account_id: @account.id 
      }
  end

  describe "GET 'index'" do
    it "will return successfully" do
      Credit.create! @valid_fields

      get :index

      response.should be_success
      assigns(:credits).first.should be_an_instance_of Credit
      assigns(:credit).should be_an_instance_of Credit
    end
  end

  describe "POST 'create'" do
    it "will create successfully" do

      post :create, credit: @valid_fields

      response.should redirect_to(credits_path)
      Credit.all.size.should eq(1)
      Credit.first.account.name.should eq("Checking")
    end

    pending "will require params"
  end
end
