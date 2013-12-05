require 'machinist/active_record'

RANDOM_SMALL_AMOUNT = (rand * 100).round(2)
RANDOM_LARGE_AMOUNT = (rand * 1000).round(2)
User.blueprint do
  email { Faker::Internet.email }
  password { "testPassw0rd" }
end

Account.blueprint do
  name { Faker::Name.name }
  balance { RANDOM_LARGE_AMOUNT }
end

Credit.blueprint do
  creditor { Faker::Name.name }
  amount { RANDOM_SMALL_AMOUNT }
  purchase_date { DateTime.yesterday }
  account { Account.make }
end

Debit.blueprint do
  debtor { Faker::Name.name }
  amount { RANDOM_LARGE_AMOUNT }
  debit_date { DateTime.yesterday }
end
