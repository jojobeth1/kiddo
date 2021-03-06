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

ActiveRecord::Schema.define(version: 20170918190714) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "comments", force: :cascade do |t|
    t.text "comment"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "places", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "category"
    t.string "address"
    t.string "hours"
    t.string "phone"
    t.string "url"
    t.text "about"
    t.bigint "city_id"
    t.integer "user_id"
    t.index ["city_id"], name: "index_places_on_city_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first"
    t.string "last"
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.text "bio"
    t.integer "num_of_kids"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
