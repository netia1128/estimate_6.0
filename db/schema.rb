# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_05_27_062923) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.integer "phone_number"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.string "hourly_cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "equipment_categories", force: :cascade do |t|
    t.string "categorey"
    t.bigint "equipment_category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["equipment_category_id"], name: "index_equipment_categories_on_equipment_category_id"
  end

  create_table "equipments", force: :cascade do |t|
    t.string "name"
    t.float "hourly_cost"
    t.float "hourly_linear_feet_cut"
    t.float "hourly_beds_printed"
    t.float "hourly_square_feet_printed"
    t.float "roll_leader"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "estimate_item_tasks", force: :cascade do |t|
  end

  create_table "estimate_items", force: :cascade do |t|
    t.bigint "customers_id", null: false
    t.bigint "users_id", null: false
    t.string "description"
    t.bigint "product_category_id", null: false
    t.bigint "product_id", null: false
    t.integer "quantity"
    t.integer "creatives"
    t.integer "image_height"
    t.integer "image_width"
    t.boolean "double_sided"
    t.boolean "white_ink"
    t.bigint "material_category_id", null: false
    t.bigint "equipments_id"
    t.string "print_quality"
    t.string "cut_style"
    t.boolean "hardware"
    t.float "hardware_cost"
    t.integer "number_of_kits"
    t.float "outsource_fee"
    t.string "external_notes"
    t.string "internal_notes"
    t.bigint "internal_estimate_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customers_id"], name: "index_estimate_items_on_customers_id"
    t.index ["equipments_id"], name: "index_estimate_items_on_equipments_id"
    t.index ["internal_estimate_id"], name: "index_estimate_items_on_internal_estimate_id"
    t.index ["material_category_id"], name: "index_estimate_items_on_material_category_id"
    t.index ["product_category_id"], name: "index_estimate_items_on_product_category_id"
    t.index ["product_id"], name: "index_estimate_items_on_product_id"
    t.index ["users_id"], name: "index_estimate_items_on_users_id"
  end

  create_table "internal_estimates", force: :cascade do |t|
    t.float "total_material_cost"
    t.float "base_materials_cost"
    t.float "lam_materials_cost"
    t.float "finishing_materials_cost"
    t.float "ink_cost"
    t.float "labor_cost"
    t.float "art_labor_cost"
    t.float "printing_labor_cost"
    t.float "finishing_labor_cost"
    t.float "shipping_labor_cost"
    t.float "total_equipment_cost"
    t.float "printer_cost"
    t.float "cutting_cost"
    t.float "hardware_fee"
    t.float "box_fee"
    t.float "outsource_fee"
    t.string "pricing_mechanism"
    t.float "price"
  end

  create_table "liquid_materials", force: :cascade do |t|
    t.string "name"
    t.float "cost_per_square_foot"
    t.bigint "material_category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["material_category_id"], name: "index_liquid_materials_on_material_category_id"
  end

  create_table "material_categories", force: :cascade do |t|
    t.string "categorey"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_categories", force: :cascade do |t|
    t.string "categorey"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "Products"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "solid_materials", force: :cascade do |t|
    t.string "name"
    t.boolean "leader"
    t.float "cost_per_unit"
    t.float "width"
    t.float "height"
    t.float "weight"
    t.bigint "material_category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["material_category_id"], name: "index_solid_materials_on_material_category_id"
  end

  create_table "task_rates", force: :cascade do |t|
    t.string "name"
    t.integer "hourly_linear_feet_finished"
    t.float "hourly_units_produced"
    t.bigint "department_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_id"], name: "index_task_rates_on_department_id"
  end

  create_table "user_categories", force: :cascade do |t|
    t.string "categorey"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "password"
    t.bigint "user_category_id", null: false
    t.bigint "department_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_id"], name: "index_users_on_department_id"
    t.index ["user_category_id"], name: "index_users_on_user_category_id"
  end

  add_foreign_key "equipment_categories", "equipment_categories"
  add_foreign_key "estimate_items", "customers", column: "customers_id"
  add_foreign_key "estimate_items", "equipments", column: "equipments_id"
  add_foreign_key "estimate_items", "internal_estimates"
  add_foreign_key "estimate_items", "material_categories"
  add_foreign_key "estimate_items", "product_categories"
  add_foreign_key "estimate_items", "products"
  add_foreign_key "estimate_items", "users", column: "users_id"
  add_foreign_key "liquid_materials", "material_categories"
  add_foreign_key "solid_materials", "material_categories"
  add_foreign_key "task_rates", "departments"
  add_foreign_key "users", "departments"
  add_foreign_key "users", "user_categories"
end
