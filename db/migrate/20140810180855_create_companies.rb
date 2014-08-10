class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.integer :ein
      t.boolean :multiple_locations?

      t.timestamps
    end
  end
end
