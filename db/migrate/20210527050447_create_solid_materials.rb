class CreateSolidMaterials < ActiveRecord::Migration[5.2]
  def change
    create_table :solid_materials do |t|
      t.string :name
      t.boolean :leader
      t.float :cost_per_unit
      t.float :width
      t.float :height
      t.float :weight
      t.references :material_category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
