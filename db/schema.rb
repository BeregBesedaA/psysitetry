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

ActiveRecord::Schema.define(version: 20150131123039) do

  create_table "aaas", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "active_admin_comments", force: true do |t|
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

  create_table "admin_users", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true

  create_table "consults", force: true do |t|
    t.datetime "datetime"
    t.decimal  "price"
    t.boolean  "payed",      default: false
    t.boolean  "active",     default: true
    t.string   "akey",       default: ""
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  add_index "consults", ["user_id"], name: "index_consults_on_user_id"

  create_table "menus", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.string   "title_of_product",            default: ""
    t.string   "link_of_product_on_psy_site", default: ""
    t.decimal  "price"
    t.boolean  "payed",                       default: false
    t.boolean  "active",                      default: true
    t.string   "akey",                        default: ""
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "name"
    t.string   "email"
  end

  add_index "orders", ["user_id"], name: "index_orders_on_user_id"

  create_table "posts", force: true do |t|
    t.string   "name",           default: ""
    t.text     "description",    default: ""
    t.string   "image",          default: ""
    t.string   "social_link_fb", default: ""
    t.boolean  "visible",        default: true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.string   "name",           default: ""
    t.text     "description",    default: ""
    t.string   "image",          default: ""
    t.datetime "datetime"
    t.decimal  "price"
    t.string   "social_link_fb", default: ""
    t.string   "get_link",       default: ""
    t.boolean  "visible",        default: true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "starts", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name",       default: ""
    t.string   "email",      default: ""
    t.string   "password",   default: ""
    t.string   "key_word",   default: ""
    t.boolean  "wants_news", default: false
    t.boolean  "active",     default: true
    t.string   "akey",       default: ""
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end