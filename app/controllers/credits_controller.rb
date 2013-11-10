class CreditsController < ApplicationController
  def index
    @credits = Credit.all
    @credit = Credit.new
  end
end
