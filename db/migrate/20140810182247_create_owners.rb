class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.integer :client_one_id
      t.integer :client_two_id
      t.integer :company_id

      t.timestamps
    end
  end
end
