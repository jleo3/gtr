require 'spec_helper'

describe CreditsController do
  describe "GET 'index'" do
    it "will return successfully" do
      Credit.make!

      get :index

      response.should be_success
      assigns(:credits).first.should be_an_instance_of Credit
      assigns(:credit).should be_an_instance_of Credit
    end
  end
end
