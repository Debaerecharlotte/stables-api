class CreateStables < ActiveRecord::Migration[7.1]
  def change
    create_table :stables do |t|
      t.string :name
      t.string :address_first
      t.string :address_second
      t.string :city
      t.string :postcode
      t.string :phone
      t.string :email
      t.string :specialty

      t.timestamps
    end
  end
end
