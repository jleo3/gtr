class Credit < ActiveRecord::Base
  validates_presence_of :creditor, :amount, :purchase_date, :account_id
  validates :account, presence: true

  belongs_to :account
end
