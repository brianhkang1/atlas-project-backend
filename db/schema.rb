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

ActiveRecord::Schema.define(version: 2018_12_01_203647) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "itinerary_days", force: :cascade do |t|
    t.integer "trip_id"
    t.integer "day"
    t.string "location"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "photos", force: :cascade do |t|
    t.integer "trip_id"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pinned_locations", force: :cascade do |t|
    t.integer "user_id"
    t.string "country"
    t.decimal "longitude", precision: 8, scale: 4
    t.decimal "latitude", precision: 8, scale: 4
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trip_likes", force: :cascade do |t|
    t.integer "trip_liker_id"
    t.integer "liked_trip_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trips", force: :cascade do |t|
    t.integer "creator_id"
    t.string "country_name"
    t.text "summary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.text "pinned_locations"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
