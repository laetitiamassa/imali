json.array!(@payments) do |payment|
  json.extract! payment, :id, :matter_id, :amount, :reception_date, :comment
  json.url payment_url(payment, format: :json)
end
