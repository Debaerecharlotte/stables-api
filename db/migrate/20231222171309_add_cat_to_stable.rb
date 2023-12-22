class AddCatToStable < ActiveRecord::Migration[7.1]
  def change
    add_column :stables, :category, :string
  end
end
