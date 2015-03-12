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

ActiveRecord::Schema.define(version: 20150312065451) do

  create_table "candidate_phones", force: :cascade do |t|
    t.integer  "candidate_id",  limit: 4
    t.integer  "phone_type_id", limit: 4
    t.string   "phone_number",  limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "candidate_phones", ["candidate_id"], name: "index_candidate_phones_on_candidate_id", using: :btree

  create_table "candidates", force: :cascade do |t|
    t.integer  "user_id",            limit: 4
    t.string   "forenames",          limit: 255
    t.string   "surnames",           limit: 255
    t.integer  "sex_id",             limit: 4
    t.date     "birthdate"
    t.integer  "marital_status_id",  limit: 4
    t.integer  "document_type_id",   limit: 4
    t.string   "document_id",        limit: 255
    t.string   "email",              limit: 255
    t.integer  "nationality_id",     limit: 4
    t.integer  "province_id",        limit: 4
    t.integer  "district_id",        limit: 4
    t.integer  "township_id",        limit: 4
    t.string   "address",            limit: 255
    t.text     "presentation",       limit: 65535
    t.float    "wage_aspiration",    limit: 24
    t.string   "professional_title", limit: 255
    t.integer  "driver_license_id",  limit: 4
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  add_index "candidates", ["user_id"], name: "index_candidates_on_user_id", using: :btree

  create_table "companies", force: :cascade do |t|
    t.string   "short_name",      limit: 255
    t.string   "business_name",   limit: 255
    t.integer  "company_type_id", limit: 4
    t.integer  "industry_id",     limit: 4
    t.text     "review",          limit: 65535
    t.integer  "province_id",     limit: 4
    t.integer  "district_id",     limit: 4
    t.integer  "township_id",     limit: 4
    t.string   "address",         limit: 255
    t.string   "contact_name",    limit: 255
    t.string   "email",           limit: 255
    t.string   "phones",          limit: 255
    t.integer  "user_id",         limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "web_site",        limit: 4
  end

  add_index "companies", ["user_id"], name: "index_companies_on_user_id", using: :btree

  create_table "company_types", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.string   "esp_name",     limit: 255
    t.string   "abbreviation", limit: 255
    t.string   "code",         limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "districts", force: :cascade do |t|
    t.integer  "province_id", limit: 4
    t.string   "name",        limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "districts", ["province_id"], name: "index_districts_on_province_id", using: :btree

  create_table "document_types", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "driver_licenses", force: :cascade do |t|
    t.string   "code",       limit: 255
    t.string   "vehicle",    limit: 255
    t.boolean  "active",     limit: 1
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "education_levels", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "industries", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "language_levels", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "languages", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "marital_statuses", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "phone_types", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "professional_areas", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "provinces", force: :cascade do |t|
    t.integer  "country_id", limit: 4
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "provinces", ["country_id"], name: "index_provinces_on_country_id", using: :btree

  create_table "roles", force: :cascade do |t|
    t.string   "name",        limit: 255,   null: false
    t.string   "title",       limit: 255,   null: false
    t.text     "description", limit: 65535, null: false
    t.text     "the_role",    limit: 65535, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "session_histories", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.string   "message",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "sexes", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "townships", force: :cascade do |t|
    t.integer  "district_id", limit: 4
    t.string   "name",        limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "townships", ["district_id"], name: "index_townships_on_district_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",            limit: 255, null: false
    t.string   "crypted_password", limit: 255
    t.string   "salt",             limit: 255
    t.integer  "role_id",          limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

  add_foreign_key "candidate_phones", "candidates"
  add_foreign_key "candidates", "users"
  add_foreign_key "companies", "users"
  add_foreign_key "districts", "provinces"
  add_foreign_key "provinces", "countries"
  add_foreign_key "townships", "districts"
end
