class ChangeAccountBalanceType < ActiveRecord::Migration
  def change
    change_column :accounts, :balance, :float
  end
end
