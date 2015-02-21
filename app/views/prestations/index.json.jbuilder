json.array!(@prestations) do |prestation|
  json.extract! prestation, :id, :matter_id, :prestation_date, :details, :rate, :fixed_price, :amount, :code, :libelle, :rate_unit, :expense
  json.url prestation_url(prestation, format: :json)
end
