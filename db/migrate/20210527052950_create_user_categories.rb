class CreateUserCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :user_categories do |t|
      t.string :categorey

      t.timestamps
    end
  end
end
