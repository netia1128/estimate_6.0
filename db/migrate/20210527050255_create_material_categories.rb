class CreateMaterialCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :material_categories do |t|
      t.string :categorey

      t.timestamps
    end
  end
end
