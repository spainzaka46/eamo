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

ActiveRecord::Schema.define(version: 2019_10_14_023545) do

  create_table "addresses", force: :cascade do |t|
    t.string "end_user_id"
    t.string "integer"
    t.string "postal_code"
    t.string "string"
    t.string "address"
    t.string "phone_number"
    t.string "send_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admins", force: :cascade do |t|
    t.string "email"
    t.string "string"
    t.string "possword"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "arrival_of_goods", force: :cascade do |t|
    t.string "product_id"
    t.string "integer"
    t.string "arrival_day"
    t.string "date"
    t.string "sheet"
    t.string "integrt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "artists", force: :cascade do |t|
    t.string "artist_name"
    t.string "string"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "delivery_charges", force: :cascade do |t|
    t.string "delivery_charge"
    t.string "integer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "disks", force: :cascade do |t|
    t.string "prouduct_id"
    t.string "integer"
    t.string "disk_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "end_users", force: :cascade do |t|
    t.string "kanzi_last_name"
    t.string "string"
    t.string "kanzi_first_name"
    t.string "kana_last_name"
    t.string "kana_first_name"
    t.string "email"
    t.string "possword"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string "genre_name"
    t.string "string"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "labels", force: :cascade do |t|
    t.string "label_name"
    t.string "string"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "method_of_payments", force: :cascade do |t|
    t.string "mathod_of_payment"
    t.string "integer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_details", force: :cascade do |t|
    t.string "order_id"
    t.string "integer"
    t.string "product_id"
    t.string "sheet"
    t.string "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string "end_user_id"
    t.string "integer"
    t.string "method_of_payment"
    t.string "postal_code"
    t.string "string"
    t.string "address"
    t.string "phone_number"
    t.string "send_name"
    t.string "delivery"
    t.string "charge"
    t.string "order_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_in_carts", force: :cascade do |t|
    t.string "end_user_id"
    t.string "integer"
    t.string "product_id"
    t.string "sheet"
    t.string "integr"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "genre_id"
    t.string "integer"
    t.string "label_id"
    t.string "artist_id"
    t.string "title"
    t.string "string"
    t.string "sales_status"
    t.string "price"
    t.string "photo"
    t.string "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "record_musics", force: :cascade do |t|
    t.string "disk_id"
    t.string "integer"
    t.string "track_number"
    t.string "theme"
    t.string "string"
    t.string "song_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
