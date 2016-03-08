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

ActiveRecord::Schema.define(version: 20160308022644) do

  create_table "browsegenres", force: :cascade do |t|
    t.string   "newreleases"
    t.string   "string"
    t.string   "category"
    t.string   "search"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "currentsongs", force: :cascade do |t|
    t.string   "title"
    t.string   "albumcover"
    t.string   "string"
    t.string   "songlength"
    t.string   "float"
    t.string   "shuffleplay"
    t.string   "previousong"
    t.string   "forwardsong"
    t.string   "repeat"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "playlists", force: :cascade do |t|
    t.string   "title"
    t.string   "artistname"
    t.string   "string"
    t.string   "shuffleplay"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.string   "body"
    t.string   "text"
    t.string   "username"
    t.string   "string"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
