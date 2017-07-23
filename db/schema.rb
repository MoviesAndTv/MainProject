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

ActiveRecord::Schema.define(version: 20170716132631) do

  create_table "movies", force: :cascade do |t|
    t.string   "name"
    t.text     "content"
    t.string   "rating"
    t.string   "releasedate"
    t.string   "duration"
    t.string   "pgrating"
    t.string   "coverpic"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.text     "directors",   default: "--- []\n"
    t.text     "writers",     default: "--- []\n"
    t.text     "stars",       default: "--- []\n"
    t.text     "genres"
  end

  create_table "n_tvs", force: :cascade do |t|
    t.string   "name"
    t.text     "content"
    t.string   "rating"
    t.string   "releasedate"
    t.text     "genres"
    t.string   "duration"
    t.string   "pgrating"
    t.string   "coverpic"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "new_tvs", force: :cascade do |t|
    t.string   "name"
    t.text     "content"
    t.string   "rating"
    t.string   "releasedate"
    t.string   "duration"
    t.string   "pgrating"
    t.string   "coverpic"
    t.string   "status"
    t.string   "officialsite"
    t.string   "language"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.text     "genres",       default: "--- []\n"
  end

  create_table "tvs", force: :cascade do |t|
    t.string   "name"
    t.text     "content"
    t.string   "releasedate"
    t.string   "duration"
    t.string   "pgrating"
    t.string   "coverpic"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.string   "episodes"
    t.text     "genres",      default: "--- []\n"
  end

end
