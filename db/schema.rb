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

ActiveRecord::Schema.define(version: 20140810182247) do

  create_table "accounts", force: true do |t|
    t.string   "title"
    t.string   "account_number"
    t.string   "type"
    t.integer  "product_id"
    t.integer  "owner_id"
    t.integer  "agent_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "addresses", force: true do |t|
    t.string   "street_one"
    t.string   "street_two"
    t.string   "city"
    t.string   "state"
    t.integer  "zip_code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clients", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "ssn"
    t.date     "birth_date"
    t.integer  "company_id"
    t.string   "title"
    t.boolean  "influencer?"
    t.boolean  "decision_maker"
    t.integer  "address_id"
    t.integer  "location_id"
    t.integer  "mobile_phone"
    t.integer  "home_phone"
    t.integer  "work_phone"
    t.integer  "work_extention"
    t.string   "primary_email"
    t.string   "secondary_email"
    t.boolean  "active_employee?"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "companies", force: true do |t|
    t.string   "name"
    t.integer  "ein"
    t.boolean  "multiple_locations?"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", force: true do |t|
    t.string   "name"
    t.boolean  "headquarters?"
    t.integer  "company_id"
    t.integer  "address_id"
    t.integer  "phone_number"
    t.integer  "fax_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "owners", force: true do |t|
    t.integer  "client_one_id"
    t.integer  "client_two_id"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.string   "name"
    t.float    "upfront_comp"
    t.float    "trailer"
    t.string   "vendor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
