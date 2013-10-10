require 'machinist/active_record'

User.blueprint do
  email { "joseph.leo3@gmail.com" }
  password { "testPassw0rd" }
end

Account.blueprint do
end

Credit.blueprint do
  creditor { "any name" }
  amount { 100.0 }
  purchase_date { DateTime.yesterday }
end
