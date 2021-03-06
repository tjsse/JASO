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

ActiveRecord::Schema.define(version: 20150115105109) do

  create_table "activities", force: true do |t|
    t.string   "title"
    t.string   "summary"
    t.text     "detail"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "feature_image_file_name"
    t.string   "feature_image_content_type"
    t.integer  "feature_image_file_size"
    t.datetime "feature_image_updated_at"
    t.integer  "shop_id"
  end

  add_index "activities", ["shop_id"], name: "index_activities_on_shop_id"

  create_table "coupon_use_records", force: true do |t|
    t.string   "phone_number"
    t.integer  "coupon_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "confirmed",    default: false
  end

  create_table "coupons", force: true do |t|
    t.string   "title"
    t.string   "subtitle"
    t.integer  "shop_id"
    t.text     "detail"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "feature_image_file_name"
    t.string   "feature_image_content_type"
    t.integer  "feature_image_file_size"
    t.datetime "feature_image_updated_at"
    t.integer  "use_limit",                  default: 0
  end

  add_index "coupons", ["shop_id"], name: "index_coupons_on_shop_id"

  create_table "items", force: true do |t|
    t.integer  "shop_id"
    t.string   "title"
    t.float    "price"
    t.string   "summary"
    t.string   "detail"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "feature_img_file_name"
    t.string   "feature_img_content_type"
    t.integer  "feature_img_file_size"
    t.datetime "feature_img_updated_at"
  end

  create_table "shops", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.text     "description_detail"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "feature_image_file_name"
    t.string   "feature_image_content_type"
    t.integer  "feature_image_file_size"
    t.datetime "feature_image_updated_at"
    t.integer  "user_id"
    t.float    "cord_x"
    t.float    "cord_y"
    t.string   "phone_number"
  end

  add_index "shops", ["user_id"], name: "index_shops_on_user_id"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",       null: false
    t.string   "encrypted_password",     default: "",       null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,        null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "role",                   default: "seller"
    t.integer  "shop_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["shop_id"], name: "index_users_on_shop_id"

end
