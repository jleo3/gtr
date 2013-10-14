require 'machinist/active_record'

User.blueprint do
  email { Faker::Internet.email }
  password { "testPassw0rd" }
end

Account.blueprint do
  name { Faker::Name.name }
  balance { (rand * 1000).round(2) }
end

Credit.blueprint do
  creditor { Faker::Name.name }
  amount { (rand * 100).round(2) }
  purchase_date { DateTime.yesterday }
end

Debit.blueprint do
end
