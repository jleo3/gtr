puts 'DEFAULT USERS'
user = User.find_or_create_by_email :name => ENV['ADMIN_NAME'].dup, :email => ENV['ADMIN_EMAIL'].dup, :password => ENV['ADMIN_PASSWORD'].dup, :password_confirmation => ENV['ADMIN_PASSWORD'].dup
puts 'user: ' << user.name
user.confirm!

account = Account.create! name: "Checking", balance: 1000.0

date = DateTime.parse("October 7th, 2013")
credit = Credit.create! creditor: "Gregory's", amount: 2.40, purchase_date: date, processed_date: date
debit = Debit.create! debtor: "Credit Suisse", amount: 3500.00, debit_date: date, processed_date: date

account.credits << credit
account.debits << debit
account.save!
