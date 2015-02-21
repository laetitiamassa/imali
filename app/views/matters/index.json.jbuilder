json.array!(@matters) do |matter|
  json.extract! matter, :id, :client_id, :opening_date, :closing_date, :description, :stage, :jurisdiction, :matter_value
  json.url matter_url(matter, format: :json)
end
