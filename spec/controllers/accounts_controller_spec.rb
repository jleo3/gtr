require 'spec_helper'

describe AccountsController do
  before do
    @valid_fields = 
      {
        name: "Checking",
        balance: 1000.00
      }
    @missing_name = { balance: 1000.00 }
  end

  describe "GET 'show'" do
    it "should be successful" do
      get :show, :id => Account.make!.id
      response.should be_success
    end
  end

  describe "GET 'new'" do
    it "should be successful" do
      get :new
      expect(response).to be_success
      expect(assigns(:account).class).to be(Account)
    end
  end

  describe "POST 'create'" do
    describe "success" do
      subject {  post :create, account: @valid_fields }

      it "will create successfuly" do
        flash[:notice].should be_nil
        expect(subject).to redirect_to(account_path(assigns(:account)))
      end
    end

    describe "failure" do
      it "will alert the user on failure" do
        post :create, account: @missing_name 
        flash[:notice].should_not be_nil

        expect(assigns(:account).class).to be(Account)
        expect(response).to be_success
      end
    end
  end
end
