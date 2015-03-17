# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150317173945) do

  create_table "meds", force: :cascade do |t|
    t.string   "name"
    t.string   "dose"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string   "route"
    t.string   "consumer_id"
    t.string   "dose_timing"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "meds", ["consumer_id"], name: "index_meds_on_consumer_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.string   "password_conf"
    t.integer  "pin"
    t.string   "role"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
