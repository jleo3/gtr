class AddAccountIdToDebits < ActiveRecord::Migration
  def change
    add_column :debits, :account_id, :integer
  end
end
