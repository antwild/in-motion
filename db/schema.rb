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

ActiveRecord::Schema.define(version: 2019_07_05_152215) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blogs", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "cover_image"
    t.index ["user_id"], name: "index_blogs_on_user_id"
  end

  create_table "clients", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "consultations", force: :cascade do |t|
    t.text "important"
    t.text "notes"
    t.text "strategy"
    t.bigint "preconsultation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["preconsultation_id"], name: "index_consultations_on_preconsultation_id"
  end

  create_table "enquiries", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "phone"
    t.string "email"
    t.string "country"
    t.text "reason"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "packages", force: :cascade do |t|
    t.bigint "consultation_id"
    t.integer "number_sessions"
    t.integer "price_tier"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["consultation_id"], name: "index_packages_on_consultation_id"
  end

  create_table "preconsultations", force: :cascade do |t|
    t.integer "age"
    t.string "sex"
    t.integer "height"
    t.integer "weight"
    t.string "goal"
    t.integer "number_timeframe"
    t.string "period_timeframe"
    t.string "contact_type"
    t.date "date"
    t.time "time"
    t.bigint "client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_preconsultations_on_client_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "blogs", "users"
  add_foreign_key "consultations", "preconsultations"
  add_foreign_key "packages", "consultations"
  add_foreign_key "preconsultations", "clients"
end
