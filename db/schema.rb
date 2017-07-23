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

ActiveRecord::Schema.define(version: 20170723162025) do

  create_table "actionmovs", force: :cascade do |t|
    t.string   "name"
    t.string   "content"
    t.string   "rating"
    t.string   "releasedate"
    t.string   "duration"
    t.string   "pgrating"
    t.string   "coverpic"
    t.string   "genres"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "comedymovs", force: :cascade do |t|
    t.string   "name"
    t.string   "content"
    t.string   "rating"
    t.string   "releasedate"
    t.string   "duration"
    t.string   "pgrating"
    t.string   "coverpic"
    t.string   "genres"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "comments", force: :cascade do |t|
    t.text     "content"
    t.integer  "users_id"
    t.integer  "movies_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "comments", ["movies_id"], name: "index_comments_on_movies_id"
  add_index "comments", ["users_id"], name: "index_comments_on_users_id"

  create_table "crimemovs", force: :cascade do |t|
    t.string   "name"
    t.string   "content"
    t.string   "rating"
    t.string   "releasedate"
    t.string   "duration"
    t.string   "pgrating"
    t.string   "coverpic"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "dramamovs", force: :cascade do |t|
    t.string   "name"
    t.string   "content"
    t.string   "rating"
    t.string   "releasedate"
    t.string   "duration"
    t.string   "pgrating"
    t.string   "coverpic"
    t.string   "genres"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "fantasymovs", force: :cascade do |t|
    t.string   "name"
    t.string   "content"
    t.string   "rating"
    t.string   "releasedate"
    t.string   "duration"
    t.string   "pgrating"
    t.string   "coverpic"
    t.string   "genres"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "followmovies", force: :cascade do |t|
    t.integer  "users_id"
    t.integer  "movies_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "genre"
  end

  add_index "followmovies", ["movies_id"], name: "index_followmovies_on_movies_id"
  add_index "followmovies", ["users_id"], name: "index_followmovies_on_users_id"

  create_table "followusers", force: :cascade do |t|
    t.integer  "follower_id"
    t.integer  "followee_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "horrormovs", force: :cascade do |t|
    t.string   "name"
    t.string   "content"
    t.string   "rating"
    t.string   "releasedate"
    t.string   "duration"
    t.string   "pgrating"
    t.string   "coverpic"
    t.string   "genres"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "like_comments", force: :cascade do |t|
    t.integer  "users_id"
    t.integer  "comments_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "like_comments", ["comments_id"], name: "index_like_comments_on_comments_id"
  add_index "like_comments", ["users_id"], name: "index_like_comments_on_users_id"

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

  create_table "romancemovs", force: :cascade do |t|
    t.string   "name"
    t.string   "content"
    t.string   "rating"
    t.string   "releasedate"
    t.string   "duration"
    t.string   "pgrating"
    t.string   "coverpic"
    t.string   "genres"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "scifimovs", force: :cascade do |t|
    t.string   "name"
    t.string   "content"
    t.string   "rating"
    t.string   "releasedate"
    t.string   "duration"
    t.string   "pgrating"
    t.string   "coverpic"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "thrillermovs", force: :cascade do |t|
    t.string   "name"
    t.string   "content"
    t.string   "rating"
    t.string   "releasedate"
    t.string   "duration"
    t.string   "pgrating"
    t.string   "coverpic"
    t.string   "genres"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
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

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
