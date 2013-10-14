class Debit < ActiveRecord::Base
  validates_presence_of :debtor, :amount, :debit_date

  belongs_to :account
end
