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

ActiveRecord::Schema.define(version: 20140821133144) do

  create_table "contacts", force: true do |t|
    t.integer  "site_id"
    t.string   "name"
    t.string   "company"
    t.string   "telephone"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "contacts", ["site_id"], name: "index_contacts_on_site_id"

  create_table "licences", force: true do |t|
    t.string   "name"
    t.string   "type"
    t.date     "date"
    t.integer  "quantity"
    t.string   "web_site_of_purchase"
    t.string   "company_of_purchase"
    t.decimal  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "licences_sites", force: true do |t|
    t.integer "licence_id"
    t.integer "site_id"
  end

  add_index "licences_sites", ["licence_id"], name: "index_licences_sites_on_licence_id"
  add_index "licences_sites", ["site_id"], name: "index_licences_sites_on_site_id"

  create_table "sites", force: true do |t|
    t.string   "company"
    t.string   "url"
    t.string   "type"
    t.string   "user_name_site"
    t.string   "password_site"
    t.string   "gmail_of_site"
    t.string   "gmail_password"
    t.string   "dropbox_password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
