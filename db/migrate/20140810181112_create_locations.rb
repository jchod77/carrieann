class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.boolean :headquarters?
      t.integer :company_id
      t.integer :address_id
      t.integer :phone_number
      t.integer :fax_number

      t.timestamps
    end
  end
end
