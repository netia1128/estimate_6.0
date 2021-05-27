class CreateLiquidMaterials < ActiveRecord::Migration[5.2]
  def change
    create_table :liquid_materials do |t|
      t.string :name
      t.float :cost_per_square_foot
      t.references :material_category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
