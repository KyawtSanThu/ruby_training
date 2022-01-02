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

ActiveRecord::Schema.define(version: 20220102085509) do

  create_table "posts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3" do |t|
    t.string   "title"
    t.text     "description", limit: 65535
    t.boolean  "public_flag"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id",                   null: false
    t.index ["user_id"], name: "index_posts_on_user_id", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3" do |t|
    t.string  "name"
    t.string  "email"
    t.string  "password"
    t.boolean "super_user_flag"
    t.string  "phone"
    t.text    "address",         limit: 65535
    t.date    "birthday"
  end

  add_foreign_key "posts", "users"
end
