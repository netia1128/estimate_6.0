class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :name
      t.integer :phone_number
      t.string :email

      t.timestamps
    end
  end
end
