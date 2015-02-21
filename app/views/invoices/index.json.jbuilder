json.array!(@invoices) do |invoice|
  json.extract! invoice, :id, :matter_id, :invoice_number, :invoice_date, :invoice_duedate
  json.url invoice_url(invoice, format: :json)
end
