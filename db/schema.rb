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

ActiveRecord::Schema.define(version: 20150620175539) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "consumers", force: :cascade do |t|
    t.string   "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "labs", force: :cascade do |t|
    t.string   "na"
    t.string   "cl"
    t.string   "bun"
    t.string   "k"
    t.string   "hco3"
    t.string   "cr"
    t.string   "wbc"
    t.string   "hgb"
    t.string   "htc"
    t.string   "plt"
    t.string   "glucose"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  create_table "meds", force: :cascade do |t|
    t.string   "name"
    t.string   "dose"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string   "route"
    t.string   "consumer_id"
    t.string   "dose_timing"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "ordering_provider"
    t.integer  "user_id"
  end

  add_index "meds", ["consumer_id"], name: "index_meds_on_consumer_id", using: :btree

  create_table "notes", force: :cascade do |t|
    t.string   "service"
    t.text     "subjective"
    t.text     "objective"
    t.text     "assessment"
    t.text     "plan"
    t.string   "ordering_provider"
    t.string   "patient"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "user_id"
  end

  add_index "notes", ["ordering_provider"], name: "index_notes_on_ordering_provider", using: :btree
  add_index "notes", ["patient"], name: "index_notes_on_patient", using: :btree
  add_index "notes", ["user_id"], name: "index_notes_on_user_id", using: :btree

  create_table "orders", force: :cascade do |t|
    t.string   "name"
    t.string   "problem"
    t.text     "details"
    t.string   "ordering_provider"
    t.string   "patient"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "user_id"
  end

  add_index "orders", ["ordering_provider"], name: "index_orders_on_ordering_provider", using: :btree
  add_index "orders", ["patient"], name: "index_orders_on_patient", using: :btree

  create_table "patients", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.date     "dob"
    t.text     "allergies"
    t.string   "code"
    t.text     "notes"
    t.text     "orders"
    t.string   "cbcNa"
    t.string   "cbcCl"
    t.string   "cbcBUN"
    t.string   "cbcK"
    t.string   "cmpHco3"
    t.string   "cmpCr"
    t.string   "cbcWbc"
    t.string   "hbg"
    t.string   "htc"
    t.string   "plt"
    t.string   "glucose"
    t.string   "bpSys"
    t.string   "bpDia"
    t.string   "o2"
    t.string   "resp"
    t.string   "temp"
    t.string   "provider_id"
    t.string   "consumer_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "pulse"
  end

  create_table "protocols", force: :cascade do |t|
    t.string   "amc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "protocols", ["amc"], name: "index_protocols_on_amc", using: :btree

  create_table "providers", force: :cascade do |t|
    t.string   "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "kind"
    t.string   "email"
    t.string   "pin"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "vital_signs", force: :cascade do |t|
    t.string   "bpsys"
    t.string   "bpdia"
    t.string   "o2"
    t.string   "pulse"
    t.string   "resp"
    t.string   "temp"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "provider_id"
    t.integer  "consumer_id"
    t.integer  "user_id"
  end

end
