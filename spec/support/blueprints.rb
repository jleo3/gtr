require 'machinist/active_record'

User.blueprint do
  email { Faker::Internet.email }
  password { "testPassw0rd" }
end

Account.blueprint do
end

Credit.blueprint do
  creditor { Faker::Name.name }
  amount { (rand * 100).round(2) }
  purchase_date { DateTime.yesterday }
end
