class AddInvoiceIdToPrestations < ActiveRecord::Migration
  def change
    add_column :prestations, :invoice_id, :integer
  end
end
