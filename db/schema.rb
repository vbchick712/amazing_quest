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

ActiveRecord::Schema.define(version: 20170616185020) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "quests", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "start_date"
    t.string "start_time"
    t.string "invite_msg"
    t.string "start_msg"
    t.string "final_msg"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "quest_id"
    t.index ["quest_id"], name: "index_roles_on_quest_id"
    t.index ["user_id"], name: "index_roles_on_user_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "name"
    t.string "task"
    t.string "answer"
    t.string "clue1"
    t.string "clue2"
    t.string "clue3"
    t.string "clue_time"
    t.string "answer_comment"
    t.string "skip_comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password"
    t.string "email"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

  add_foreign_key "roles", "quests"
  add_foreign_key "roles", "users"
end
