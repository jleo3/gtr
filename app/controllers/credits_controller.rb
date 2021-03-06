class CreditsController < ApplicationController
  def index
    @credits = Credit.all
    gon.jbuilder template: "app/views/credits/_all_credits.json.jbuilder"
    @credit = Credit.new
  end

  def create
    credit = Credit.new(params.require(:credit).permit(:creditor, :amount, :purchase_date, :account_id))

    if !credit.save
      flash[:notice] = "Could not add credit: #{credit.errors.full_messages.join(", ")}"
    end
    redirect_to credits_path
  end

end
