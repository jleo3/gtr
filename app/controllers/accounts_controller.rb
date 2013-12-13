class AccountsController < ApplicationController
  def show
    @account = Account.find(params[:id])
    gon.credits = @account.credits
  end

  def create
    @account = Account.new(params.require(:account).permit(:name, :mint_name, :balance))
    if @account.save
      redirect_to @account
    else
      flash[:notice] = "Could not create account: #{@account.errors.full_messages.join(", ")}"
      @account = Account.new
      render :new
    end
  end

  def new
    @account = Account.new
  end
end
