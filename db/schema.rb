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

ActiveRecord::Schema.define(version: 20180212091247) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "lophocs", force: :cascade do |t|
    t.string "malop"
    t.string "tengv"
    t.integer "siso"
    t.string "tenmh"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lophs", force: :cascade do |t|
    t.string "malop"
    t.string "tengv"
    t.integer "siso"
    t.string "tenmh"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "sinhvien_id"
    t.index ["sinhvien_id"], name: "index_lophs_on_sinhvien_id"
  end

  create_table "lops", force: :cascade do |t|
    t.string "teacher"
    t.integer "amount"
    t.string "subject"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sinhviens", force: :cascade do |t|
    t.string "hoten"
    t.integer "namsinh"
    t.string "diachi"
    t.string "hinh"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "loph_id"
    t.index ["loph_id"], name: "index_sinhviens_on_loph_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "lophs", "sinhviens"
  add_foreign_key "sinhviens", "lophs"
end
