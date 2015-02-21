json.array!(@clients) do |client|
  json.extract! client, :id, :first_name, :last_name, :birth_date, :birth_place, :profession, :civil_status, :home_street, :home_number, :home_postcode, :home_city, :home_country, :home_tel, :home_fax, :home_mobile, :office_street, :office_number, :office_postcode, :office_city, :office_country, :office_tel, :office_fax, :office_mobile, :profession, :revenues
  json.url client_url(client, format: :json)
end
