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

ActiveRecord::Schema.define(version: 2019_02_26_161218) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "garden_plants", force: :cascade do |t|
    t.string "location"
    t.bigint "plant_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "status_id"
    t.index ["plant_id"], name: "index_garden_plants_on_plant_id"
    t.index ["status_id"], name: "index_garden_plants_on_status_id"
    t.index ["user_id"], name: "index_garden_plants_on_user_id"
  end

  create_table "pg_search_documents", force: :cascade do |t|
    t.text "content"
    t.string "searchable_type"
    t.bigint "searchable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["searchable_type", "searchable_id"], name: "index_pg_search_documents_on_searchable_type_and_searchable_id"
  end

  create_table "plants", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "species_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "difficulty"
    t.text "short_description"
    t.string "uses"
    t.string "container"
    t.bigint "requirement_id"
    t.index ["requirement_id"], name: "index_plants_on_requirement_id"
    t.index ["species_id"], name: "index_plants_on_species_id"
  end

  create_table "requirements", force: :cascade do |t|
    t.string "light"
    t.string "temperature"
    t.string "watering"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "species", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_species_on_category_id"
  end

  create_table "statuses", force: :cascade do |t|
    t.string "daily_watering"
    t.string "daily_light"
    t.string "daily_temp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "garden_plants", "plants"
  add_foreign_key "garden_plants", "statuses"
  add_foreign_key "garden_plants", "users"
  add_foreign_key "plants", "requirements"
  add_foreign_key "plants", "species"
  add_foreign_key "species", "categories"
end
