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

ActiveRecord::Schema.define(version: 2019_07_09_192558) do

  create_table "creatures", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "wisdom"
    t.integer "universe_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "traveler_creatures", force: :cascade do |t|
    t.integer "traveler_id"
    t.integer "creature_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "traveler_universes", force: :cascade do |t|
    t.integer "traveler_id"
    t.integer "universe_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "travelers", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "password_digest"
    t.string "uid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "universes", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
