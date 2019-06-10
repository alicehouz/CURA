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

ActiveRecord::Schema.define(version: 2019_06_09_135409) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "orders", force: :cascade do |t|
    t.string "order_number"
    t.bigint "user_id"
    t.bigint "prescription_id"
    t.integer "total_price"
    t.date "order_date"
    t.string "street_name"
    t.string "zip_code"
    t.string "city"
    t.string "order_status"
    t.integer "prescription_price"
    t.integer "amount_refunded"
    t.integer "delivery_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "pharmacie_id"
    t.index ["pharmacie_id"], name: "index_orders_on_pharmacie_id"
    t.index ["prescription_id"], name: "index_orders_on_prescription_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "orders_prescriptions", force: :cascade do |t|
    t.bigint "order_id"
    t.bigint "prescription_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_orders_prescriptions_on_order_id"
    t.index ["prescription_id"], name: "index_orders_prescriptions_on_prescription_id"
  end

  create_table "pharmacies", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "latitude"
    t.float "longitude"
  end

  create_table "prescriptions", force: :cascade do |t|
    t.date "scan_date"
    t.string "image"
    t.string "prescription_name"
    t.date "prescription_start_date"
    t.date "prescription_expiry_date"
    t.date "delivery_date"
    t.boolean "reccurrency"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_prescriptions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar"
    t.string "first_name"
    t.string "last_name"
    t.string "street_name"
    t.string "zip_code"
    t.string "city"
    t.string "phone_number"
    t.string "social_security"
    t.string "id_card"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "orders", "pharmacies", column: "pharmacie_id"
  add_foreign_key "orders", "prescriptions"
  add_foreign_key "orders", "users"
  add_foreign_key "orders_prescriptions", "orders"
  add_foreign_key "orders_prescriptions", "prescriptions"
end
