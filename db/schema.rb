# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_01_27_203052) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "activity_level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "allergies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "food_group_foods", force: :cascade do |t|
    t.bigint "food_group_id", null: false
    t.bigint "food_ingredient_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["food_group_id"], name: "index_food_group_foods_on_food_group_id"
    t.index ["food_ingredient_id"], name: "index_food_group_foods_on_food_ingredient_id"
  end

  create_table "food_groups", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "food_ingredients", force: :cascade do |t|
    t.string "name"
    t.integer "amount"
    t.string "unit"
    t.integer "carbs"
    t.integer "calories"
    t.integer "protein"
    t.integer "fat"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "goals", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.float "goal_weight"
    t.float "goal_body_fat"
    t.float "goal_muscle_mass"
    t.datetime "goal_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_goals_on_user_id"
  end

  create_table "meal_plans", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "name"
    t.datetime "date"
    t.integer "calories"
    t.integer "carbs"
    t.integer "protein"
    t.integer "fat"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_meal_plans_on_user_id"
  end

  create_table "recipe_ingredients", force: :cascade do |t|
    t.bigint "recipe_id", null: false
    t.bigint "food_ingredient_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["food_ingredient_id"], name: "index_recipe_ingredients_on_food_ingredient_id"
    t.index ["recipe_id"], name: "index_recipe_ingredients_on_recipe_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "name"
    t.text "instructions"
    t.integer "serving_size"
    t.integer "calories"
    t.integer "protein"
    t.integer "carbs"
    t.integer "fat"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_allergies", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "allergy_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["allergy_id"], name: "index_user_allergies_on_allergy_id"
    t.index ["user_id"], name: "index_user_allergies_on_user_id"
  end

  create_table "user_progresses", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "date"
    t.float "weight"
    t.integer "body_fat"
    t.integer "muscle_mass"
    t.integer "calorie_intake"
    t.integer "calorie_burn"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_progresses_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.integer "age"
    t.string "gender"
    t.float "height"
    t.float "weight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "food_group_foods", "food_groups"
  add_foreign_key "food_group_foods", "food_ingredients"
  add_foreign_key "goals", "users"
  add_foreign_key "meal_plans", "users"
  add_foreign_key "recipe_ingredients", "food_ingredients"
  add_foreign_key "recipe_ingredients", "recipes"
  add_foreign_key "user_allergies", "allergies"
  add_foreign_key "user_allergies", "users"
  add_foreign_key "user_progresses", "users"
end
