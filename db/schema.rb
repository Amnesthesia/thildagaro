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

ActiveRecord::Schema.define(version: 20150406053419) do

  create_table "casein_admin_users", force: :cascade do |t|
    t.string   "login",                           null: false
    t.string   "name"
    t.string   "email"
    t.integer  "access_level",        default: 0, null: false
    t.string   "crypted_password",                null: false
    t.string   "password_salt",                   null: false
    t.string   "persistence_token"
    t.string   "single_access_token"
    t.string   "perishable_token"
    t.integer  "login_count",         default: 0, null: false
    t.integer  "failed_login_count",  default: 0, null: false
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip"
    t.string   "last_login_ip"
    t.string   "time_zone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", force: :cascade do |t|
    t.string   "name"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments_posts", id: false, force: :cascade do |t|
    t.integer "comment_id"
    t.integer "post_id"
  end

  add_index "comments_posts", ["comment_id", "post_id"], name: "comments_posts_index", unique: true

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"

  create_table "images", force: :cascade do |t|
    t.integer  "resource_id"
    t.string   "resource_type"
    t.string   "caption"
    t.string   "path"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "images", ["resource_type", "resource_id"], name: "index_images_on_resource_type_and_resource_id"

  create_table "pages", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "pictures_id"
    t.boolean  "published"
    t.integer  "layout"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.boolean  "front"
    t.string   "slug"
  end

  add_index "pages", ["pictures_id"], name: "index_pages_on_pictures_id"

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string   "title"
    t.string   "subtitle"
    t.text     "content"
    t.integer  "pictures_id"
    t.string   "client"
    t.string   "client_url"
    t.date     "completion_date"
    t.boolean  "published"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "order"
    t.string   "slug"
  end

  add_index "projects", ["pictures_id"], name: "index_projects_on_pictures_id"

end
