class ChangeNameToCreditor < ActiveRecord::Migration
  def change
    rename_column :credits, :name, :creditor
  end
end
