class CreateInternalEstimates < ActiveRecord::Migration[5.2]
  def change
    create_table :internal_estimates do |t|
      t.float :total_material_cost
      t.float :base_materials_cost
      t.float :lam_materials_cost
      t.float :finishing_materials_cost
      t.float :ink_cost
      t.float :labor_cost
      t.float :art_labor_cost
      t.float :printing_labor_cost
      t.float :finishing_labor_cost
      t.float :shipping_labor_cost
      t.float :total_equipment_cost
      t.float :printer_cost
      t.float :cutting_cost
      t.float :hardware_fee
      t.float :box_fee
      t.float :outsource_fee
      t.string :pricing_mechanism
      t.float :price
    end
  end
end
