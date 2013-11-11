class CreditsController < ApplicationController
  def index
    @credits = Credit.all
    @credit = Credit.new
  end

  def create
    Credit.create!(params.require(:credit).permit(:creditor, :amount, :purchase_date, :account_id))

    redirect_to credits_path
  end

end
