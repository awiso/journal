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

ActiveRecord::Schema.define(version: 2019_05_30_003947) do

  create_table "future_log_entries", force: :cascade do |t|
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "future_log_entry_id"
    t.integer "future_log_id"
    t.index ["future_log_entry_id"], name: "index_future_log_entries_on_future_log_entry_id"
    t.index ["future_log_id"], name: "index_future_log_entries_on_future_log_id"
  end

  create_table "future_logs", force: :cascade do |t|
    t.integer "jour_id"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "future_log_entry_id"
    t.index ["future_log_entry_id"], name: "index_future_logs_on_future_log_entry_id"
    t.index ["jour_id"], name: "index_future_logs_on_jour_id"
  end

  create_table "jours", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "jour_id"
    t.integer "future_log_id"
    t.index ["future_log_id"], name: "index_jours_on_future_log_id"
    t.index ["jour_id"], name: "index_jours_on_jour_id"
  end

end
