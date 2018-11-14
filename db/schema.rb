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

ActiveRecord::Schema.define(version: 20181114163232) do

  create_table "list_movies", force: :cascade do |t|
    t.integer  "movielist_id"
    t.integer  "movie_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["movie_id"], name: "index_list_movies_on_movie_id"
    t.index ["movielist_id", "movie_id", "created_at"], name: "index_list_movies_on_movielist_id_and_movie_id_and_created_at"
    t.index ["movielist_id"], name: "index_list_movies_on_movielist_id"
  end

  create_table "movielists", force: :cascade do |t|
    t.string   "listname"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id", "created_at"], name: "index_movielists_on_user_id_and_created_at"
    t.index ["user_id"], name: "index_movielists_on_user_id"
  end

  create_table "movies", force: :cascade do |t|
    t.string   "title"
    t.string   "date"
    t.string   "story"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "posterpath"
    t.string   "original_title"
    t.string   "pic_path"
    t.string   "genre"
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.boolean  "admin",           default: false
    t.string   "picture"
    t.string   "remember_digest"
  end

end
