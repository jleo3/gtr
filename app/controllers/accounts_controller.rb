class AccountsController < ApplicationController
  def show
    @account = Account.find(params[:id])
    gon.credits = @account.credits
  end
end
