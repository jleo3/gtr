require 'spec_helper'

describe AccountsController do

  describe "GET 'show'" do

    it "should be successful" do
      get :show, :id => Account.make!.id
      response.should be_success
    end

  end

end
