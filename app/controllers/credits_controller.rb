class CreditsController < ApplicationController
  def index
    @credits = Credit.all
  end
end
