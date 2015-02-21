class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.integer :matter_id
      t.integer :invoice_number
      t.date :invoice_date
      t.date :invoice_duedate

      t.timestamps null: false
    end
  end
end
