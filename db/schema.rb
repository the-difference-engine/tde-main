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

ActiveRecord::Schema.define(version: 20161128212833) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "contacts", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.text     "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "developers", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "title"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "developerpic_file_name"
    t.string   "developerpic_content_type"
    t.integer  "developerpic_file_size"
    t.datetime "developerpic_updated_at"
  end

  create_table "leads", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.string   "company"
    t.string   "company_kind"
    t.string   "role"
    t.string   "website"
    t.string   "hear_about_tde"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "leads_needs", id: false, force: :cascade do |t|
    t.integer "lead_id", null: false
    t.integer "need_id", null: false
  end

  create_table "needs", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.string   "portfolio_image_file_name"
    t.string   "portfolio_image_content_type"
    t.integer  "portfolio_image_file_size"
    t.datetime "portfolio_image_updated_at"
    t.string   "image_one_file_name"
    t.string   "image_one_content_type"
    t.integer  "image_one_file_size"
    t.datetime "image_one_updated_at"
    t.string   "image_two_file_name"
    t.string   "image_two_content_type"
    t.integer  "image_two_file_size"
    t.datetime "image_two_updated_at"
    t.string   "image_three_file_name"
    t.string   "image_three_content_type"
    t.integer  "image_three_file_size"
    t.datetime "image_three_updated_at"
  end

end
