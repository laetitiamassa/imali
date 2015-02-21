class AddNameToMatter < ActiveRecord::Migration
  def change
    add_column :matters, :name, :string
  end
end
