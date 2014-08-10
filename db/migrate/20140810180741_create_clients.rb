class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.integer :ssn
      t.date :birth_date
      t.integer :company_id
      t.string :title
      t.boolean :influencer?
      t.boolean :decision_maker
      t.integer :address_id
      t.integer :location_id
      t.integer :mobile_phone
      t.integer :home_phone
      t.integer :work_phone
      t.integer :work_extention
      t.string :primary_email
      t.string :secondary_email
      t.boolean :active_employee?

      t.timestamps
    end
  end
end
