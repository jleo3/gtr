json.credits @credits do |credit|
  json.creditor credit.creditor
  json.amount number_to_currency(credit.amount)
  json.purchase_date credit.purchase_date.strftime("%a %e %b")
  json.account credit.account.name
end
