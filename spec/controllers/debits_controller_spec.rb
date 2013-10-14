require 'spec_helper'

describe DebitsController do

  describe "GET 'index'" do
    it "will be successful" do
      Debit.make!
      get :index

      response.should be_success
      assigns(:debits).first.should be_an_instance_of Debit
    end
  end
end
