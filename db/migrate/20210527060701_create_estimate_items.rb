class CreateEstimateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :estimate_items do |t|
      t.references :customers, null: false, foreign_key: true
      t.references :users, null: false, foreign_key: true
      t.string :description

      t.references :product_category, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.integer :quantity
      t.integer :creatives

      t.integer :image_height
      t.integer :image_width
      t.boolean :double_sided
      t.boolean :white_ink

      t.references :material_category, null: false, foreign_key: true
      t.references :equipments, foreign_key: true
      t.string :print_quality
      t.string :cut_style
      t.boolean :hardware
      t.float :hardware_cost
      t.integer :number_of_kits
      t.float :outsource_fee

      t.string :external_notes
      t.string :internal_notes

      t.references :internal_estimate, null: false, foreign_key: true
      t.timestamps
    end
  end
end
