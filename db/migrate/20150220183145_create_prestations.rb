class CreatePrestations < ActiveRecord::Migration
  def change
    create_table :prestations do |t|
      t.integer :matter_id
      t.datetime :prestation_date
      t.text :details
      t.integer :rate
      t.boolean :fixed_price
      t.integer :amount
      t.string :code
      t.string :libelle
      t.string :rate_unit
      t.boolean :expense

      t.timestamps null: false
    end
  end
end
