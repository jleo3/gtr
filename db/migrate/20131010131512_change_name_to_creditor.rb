class ChangeNameToCreditor < ActiveRecord::Migration
  def change
    change_column :credits, :name, :creditor
  end
end
