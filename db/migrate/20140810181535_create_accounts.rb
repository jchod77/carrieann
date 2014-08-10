class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :title
      t.string :account_number
      t.string :type
      t.integer :product_id
      t.integer :owner_id
      t.integer :agent_id

      t.timestamps
    end
  end
end
