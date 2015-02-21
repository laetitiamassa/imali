class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :matter_id
      t.integer :amount
      t.date :reception_date
      t.text :comment

      t.timestamps null: false
    end
  end
end
