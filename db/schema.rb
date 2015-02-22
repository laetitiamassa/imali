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

ActiveRecord::Schema.define(version: 20150221214619) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clients", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.date     "birth_date"
    t.string   "birth_place"
    t.string   "profession"
    t.string   "civil_status"
    t.string   "home_street"
    t.integer  "home_number"
    t.integer  "home_postcode"
    t.string   "home_city"
    t.string   "home_country"
    t.integer  "home_tel"
    t.integer  "home_fax"
    t.integer  "home_mobile"
    t.string   "office_street"
    t.integer  "office_number"
    t.integer  "office_postcode"
    t.string   "office_city"
    t.string   "office_country"
    t.integer  "office_tel"
    t.integer  "office_fax"
    t.integer  "office_mobile"
    t.integer  "revenues"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "invoices", force: :cascade do |t|
    t.integer  "matter_id"
    t.integer  "invoice_number"
    t.date     "invoice_date"
    t.date     "invoice_duedate"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "matters", force: :cascade do |t|
    t.integer  "client_id"
    t.date     "opening_date"
    t.date     "closing_date"
    t.text     "description"
    t.string   "stage"
    t.string   "jurisdiction"
    t.integer  "matter_value"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "name"
  end

  create_table "payments", force: :cascade do |t|
    t.integer  "matter_id"
    t.integer  "amount"
    t.date     "reception_date"
    t.text     "comment"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "prestations", force: :cascade do |t|
    t.integer  "matter_id"
    t.datetime "prestation_date"
    t.text     "details"
    t.integer  "rate"
    t.boolean  "fixed_price"
    t.integer  "amount"
    t.string   "code"
    t.string   "libelle"
    t.string   "rate_unit"
    t.boolean  "expense"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "invoice_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
