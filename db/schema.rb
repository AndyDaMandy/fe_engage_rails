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

ActiveRecord::Schema[7.0].define(version: 2023_03_07_233212) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "class_growths", force: :cascade do |t|
    t.string "class_name"
    t.boolean "class_rank"
    t.integer "hp"
    t.integer "str"
    t.integer "mag"
    t.integer "dex"
    t.integer "spd"
    t.integer "def"
    t.integer "res"
    t.integer "lck"
    t.integer "bld"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "units", force: :cascade do |t|
    t.string "char_name"
    t.integer "b_lvl"
    t.integer "b_hp"
    t.integer "b_str"
    t.integer "b_mag"
    t.integer "b_dex"
    t.integer "b_spd"
    t.integer "b_def"
    t.integer "b_res"
    t.integer "b_lck"
    t.integer "b_bld"
    t.integer "b_mov"
    t.integer "g_hp"
    t.integer "g_str"
    t.integer "g_mag"
    t.integer "g_dex"
    t.integer "g_spd"
    t.integer "g_def"
    t.integer "g_res"
    t.integer "g_lck"
    t.integer "g_bld"
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

end
