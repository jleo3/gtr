class AccountsController < ApplicationController
  def show
    @account = Account.find(params[:id])
  end

  def update
  end
end
