require 'spec_helper'

describe AccountsController do

  before do
    @account = Account.make!
  end

  describe "GET 'show'" do
    it "should be successful" do
      get :show, :id => @account.id
      response.should be_success
    end
  end

  describe "POST 'update'" do
    it "should update balance" do
      xhr :post, :update, id: @account

      response.should be_success
      @account.balance.should eq(900)
    end
  end

end
