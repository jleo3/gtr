class AddAccountIdToCredits < ActiveRecord::Migration
  def change
    add_column :credits, :account_id, :integer
  end
end
