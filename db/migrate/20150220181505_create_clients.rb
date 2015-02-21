class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.date :birth_date
      t.string :birth_place
      t.string :profession
      t.string :civil_status
      t.string :home_street
      t.integer :home_number
      t.integer :home_postcode
      t.string :home_city
      t.string :home_country
      t.integer :home_tel
      t.integer :home_fax
      t.integer :home_mobile
      t.string :office_street
      t.integer :office_number
      t.integer :office_postcode
      t.string :office_city
      t.string :office_country
      t.integer :office_tel
      t.integer :office_fax
      t.integer :office_mobile
      t.string :profession
      t.integer :revenues

      t.timestamps null: false
    end
  end
end
