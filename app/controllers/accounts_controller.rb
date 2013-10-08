class AccountsController < ApplicationController
  def show
    @account = Account.find(params[:id])
  end

  def update
    @update = "Yay! Updated!"
    respond_to do |format|
      format.js {}
    end
  end
end
