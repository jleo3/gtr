class Credit < ActiveRecord::Base
  validates_presence_of :creditor, :amount, :purchase_date

  belongs_to :account
end
