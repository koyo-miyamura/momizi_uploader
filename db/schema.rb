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

ActiveRecord::Schema.define(version: 20180215095817) do

  create_table "comments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "content_id"
    t.integer "user_id"
    t.text "text"
    t.datetime "created_at"
    t.datetime "deleted_at"
    t.index ["content_id"], name: "index_comments_on_content_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "contents", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "user_id"
    t.string "image_path"
    t.text "caption"
    t.datetime "created_at"
    t.datetime "deleted_at"
    t.index ["user_id"], name: "index_contents_on_user_id"
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.string "password_conf"
    t.datetime "created_at"
    t.datetime "deleted_at"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
