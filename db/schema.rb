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

ActiveRecord::Schema.define(version: 2020_01_01_104649) do

  create_table "carts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "courses", force: :cascade do |t|
    t.string "title"
    t.string "number"
    t.string "department"
    t.integer "semester"
    t.decimal "credit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.string "head"
    t.integer "student_no"
    t.integer "teacher_no"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gradings", force: :cascade do |t|
    t.string "grade"
    t.decimal "point"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "line_items", force: :cascade do |t|
    t.integer "course_id"
    t.integer "cart_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["cart_id"], name: "index_line_items_on_cart_id"
    t.index ["course_id"], name: "index_line_items_on_course_id"
    t.index ["user_id"], name: "index_line_items_on_user_id"
  end

  create_table "results", force: :cascade do |t|
    t.integer "student_id"
    t.string "name"
    t.integer "semester"
    t.string "course_code"
    t.string "course_name"
    t.string "grade"
    t.decimal "point"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "course_credit"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "role"
    t.text "name"
    t.integer "std_id"
    t.integer "semester"
    t.string "department"
    t.string "avatar"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
