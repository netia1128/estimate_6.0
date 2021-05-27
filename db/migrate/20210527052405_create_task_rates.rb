class CreateTaskRates < ActiveRecord::Migration[5.2]
  def change
    create_table :task_rates do |t|
      t.string :name
      t.integer :hourly_linear_feet_finished
      t.float :hourly_units_produced

      t.references :department, null: false, foreign_key: true
      t.timestamps
    end
  end
end
