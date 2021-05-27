class CreateEquipments < ActiveRecord::Migration[5.2]
  def change
    create_table :equipments do |t|
      t.string :name
      t.float :hourly_cost
      t.float :hourly_linear_feet_cut
      t.float :hourly_beds_printed
      t.float :hourly_square_feet_printed
      t.float :roll_leader

      t.timestamps
    end
  end
end
