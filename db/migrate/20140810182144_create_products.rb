class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.float :upfront_comp
      t.float :trailer
      t.string :vendor

      t.timestamps
    end
  end
end
