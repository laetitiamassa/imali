class CreateMatters < ActiveRecord::Migration
  def change
    create_table :matters do |t|
      t.integer :client_id
      t.date :opening_date
      t.date :closing_date
      t.text :description
      t.string :stage
      t.string :jurisdiction
      t.integer :matter_value

      t.timestamps null: false
    end
  end
end
