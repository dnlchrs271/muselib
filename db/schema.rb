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

ActiveRecord::Schema.define(version: 20160510213204) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "browsegenres", force: :cascade do |t|
    t.string   "newreleases"
    t.string   "string"
    t.string   "category"
    t.string   "search"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "categorizations", force: :cascade do |t|
    t.integer  "post_id"
    t.integer  "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "categorizations", ["post_id"], name: "index_categorizations_on_post_id"
  add_index "categorizations", ["tag_id"], name: "index_categorizations_on_tag_id"

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

  create_table "genres", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "playlists", force: :cascade do |t|
    t.string   "title"
    t.string   "artistname"
    t.string   "string"
    t.string   "shuffleplay"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "genre_id"
  end

  add_index "playlists", ["genre_id"], name: "index_playlists_on_genre_id"

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.string   "body"
    t.string   "text"
    t.string   "username"
    t.string   "string"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "posts", ["user_id"], name: "index_posts_on_user_id"

  create_table "song_labels", force: :cascade do |t|
    t.string   "title",       default: "untitled", null: false
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.string   "song_uid"
    t.string   "song_name"
    t.integer  "playlist_id"
  end

  add_index "song_labels", ["playlist_id"], name: "index_song_labels_on_playlist_id"
  add_index "song_labels", ["title"], name: "index_song_labels_on_title", unique: true

  create_table "tags", force: :cascade do |t|
    t.string   "title",      default: "untitled", null: false
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  add_index "tags", ["title"], name: "index_tags_on_title", unique: true

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.boolean  "is_admin",               default: false, null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
