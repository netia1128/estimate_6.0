class CreateEquipmentCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :equipment_categories do |t|
      t.string :categorey
      t.references :equipment_category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
