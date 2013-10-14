class CreateDebits < ActiveRecord::Migration
  def change
    create_table :debits do |t|
      t.string :debtor
      t.float :amount
      t.datetime :debit_date
      t.datetime :processed_date

      t.timestamps
    end
  end
end
