class CreateCredits < ActiveRecord::Migration
  def change
    create_table :credits do |t|
      t.string :name
      t.float :amount
      t.datetime :purchase_date
      t.datetime :processed_date

      t.timestamps
    end
  end
end
