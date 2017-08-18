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

ActiveRecord::Schema.define(version: 20170818090611) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "name"
    t.string "nickname"
    t.string "email", null: false
    t.string "password_digest"
    t.json "tokens"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
  end

  create_table "media", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "metadata"
    t.string "uri"
    t.string "media_type"
    t.string "consumable_type"
    t.bigint "consumable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["consumable_type", "consumable_id"], name: "index_media_on_consumable_type_and_consumable_id"
    t.index ["title"], name: "index_media_on_title"
  end

  create_table "notes", force: :cascade do |t|
    t.string "note"
    t.bigint "medium_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["medium_id"], name: "index_notes_on_medium_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "nickname"
    t.string "email", null: false
    t.string "password_digest"
    t.string "role"
    t.json "tokens"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
