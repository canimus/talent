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

ActiveRecord::Schema.define(version: 20150411151916) do

  create_table "addresses", force: true do |t|
    t.string   "street"
    t.string   "suburb"
    t.string   "state"
    t.string   "post_code"
    t.string   "country"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "curriculums", force: true do |t|
    t.string   "candidate"
    t.text     "content"
    t.string   "role"
    t.string   "tools"
    t.string   "words"
    t.string   "verbs"
    t.datetime "received_ate"
    t.datetime "evaluated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "resume"
  end

  create_table "customers", force: true do |t|
    t.string   "name"
    t.integer  "address_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "customers", ["address_id"], name: "index_customers_on_address_id"

  create_table "employees", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "role"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
