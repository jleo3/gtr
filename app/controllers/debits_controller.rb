class DebitsController < ApplicationController
  def index
    @debits = Debit.all
  end
end
