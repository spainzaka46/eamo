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

ActiveRecord::Schema.define(version: 2019_10_19_101141) do

  create_table "addresses", force: :cascade do |t|
    t.integer "end_user_id", null: false
    t.string "postal_code", null: false
    t.string "address", null: false
    t.string "phone_number", null: false
    t.string "send_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admins", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "arrival_of_goods", force: :cascade do |t|
    t.integer "product_id", null: false
    t.date "arrival_day", null: false
    t.integer "sheet", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "artists", force: :cascade do |t|
    t.string "artist_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "delivery_charges", force: :cascade do |t|
    t.integer "delivery_charge", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "disks", force: :cascade do |t|
    t.integer "product_id", null: false
    t.integer "disk_number", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "end_users", force: :cascade do |t|
    t.string "kanzi_last_name", null: false
    t.string "kanzi_first_name", null: false
    t.string "kana_last_name", null: false
    t.string "kana_first_name", null: false
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_end_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_end_users_on_reset_password_token", unique: true
  end

  create_table "genres", force: :cascade do |t|
    t.string "genre_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "labels", force: :cascade do |t|
    t.string "label_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "method_of_payments", force: :cascade do |t|
    t.integer "method_of_payment", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_details", force: :cascade do |t|
    t.integer "order_id", null: false
    t.integer "product_id", null: false
    t.integer "sheet", null: false
    t.integer "price", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer "end_user_id", null: false
    t.integer "method_of_payment", null: false
    t.string "postal_code", null: false
    t.string "address", null: false
    t.string "phone_number", null: false
    t.string "send_name", null: false
    t.integer "delivery_charge", null: false
    t.integer "order_status", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_in_carts", force: :cascade do |t|
    t.integer "end_user_id", null: false
    t.integer "product_id", null: false
    t.integer "sheet", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.integer "genre_id", null: false
    t.integer "label_id", null: false
    t.integer "artist_id", null: false
    t.string "title", null: false
    t.integer "sales_status", null: false
    t.integer "price", null: false
    t.integer "photo_id"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "record_musics", force: :cascade do |t|
    t.integer "disk_id", null: false
    t.integer "track_number", null: false
    t.string "song_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "theme_id"
  end

  create_table "themes", force: :cascade do |t|
    t.string "theme"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
