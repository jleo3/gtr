class Account < ActiveRecord::Base
  validates_presence_of :name, :balance
  validates_uniqueness_of :name
end
