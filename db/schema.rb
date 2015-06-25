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

ActiveRecord::Schema.define(version: 20150624171809) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cohorts", force: :cascade do |t|
    t.string  "name",       null: false
    t.integer "officer_id"
    t.date    "start_date"
    t.date    "end_date"
  end

  create_table "officers", force: :cascade do |t|
    t.string "name",            null: false
    t.string "email",           null: false
    t.string "password_digest", null: false
    t.string "image"
  end

  create_table "students", force: :cascade do |t|
    t.string   "name",                                null: false
    t.string   "email",                               null: false
    t.string   "password_digest",                     null: false
    t.boolean  "is_employed",     default: false
    t.integer  "phone_number"
    t.string   "city"
    t.string   "state"
    t.text     "skills"
    t.string   "company_name"
    t.date     "employment_date"
    t.integer  "cohort_id"
    t.string   "status",          default: "student"
    t.boolean  "survey_complete"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
