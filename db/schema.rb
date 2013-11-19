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

ActiveRecord::Schema.define(version: 20131119000652) do

  create_table "colleges", force: true do |t|
    t.string   "name"
    t.string   "city"
    t.string   "state"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "colleges_teachers", force: true do |t|
    t.integer "college_id"
    t.integer "teacher_id"
  end

  create_table "cores", force: true do |t|
    t.string   "name"
    t.integer  "course_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cores", ["course_id"], name: "index_cores_on_course_id", using: :btree

  create_table "courses", force: true do |t|
    t.string   "name"
    t.integer  "college_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "courses", ["college_id"], name: "index_courses_on_college_id", using: :btree

  create_table "disciplines", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "college_id"
    t.integer  "teacher_id"
    t.integer  "core_id"
    t.integer  "course_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "disciplines", ["college_id"], name: "index_disciplines_on_college_id", using: :btree
  add_index "disciplines", ["core_id"], name: "index_disciplines_on_core_id", using: :btree
  add_index "disciplines", ["course_id"], name: "index_disciplines_on_course_id", using: :btree
  add_index "disciplines", ["teacher_id"], name: "index_disciplines_on_teacher_id", using: :btree

  create_table "questions", force: true do |t|
    t.text     "description"
    t.integer  "discipline_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "questions", ["discipline_id"], name: "index_questions_on_discipline_id", using: :btree
  add_index "questions", ["user_id"], name: "index_questions_on_user_id", using: :btree

  create_table "rails_admin_histories", force: true do |t|
    t.text     "message"
    t.string   "username"
    t.integer  "item"
    t.string   "table"
    t.integer  "month",      limit: 2
    t.integer  "year",       limit: 8
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rails_admin_histories", ["item", "table", "month", "year"], name: "index_rails_admin_histories", using: :btree

  create_table "teachers", force: true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.integer  "core_id"
    t.integer  "course_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "teachers", ["core_id"], name: "index_teachers_on_core_id", using: :btree
  add_index "teachers", ["course_id"], name: "index_teachers_on_course_id", using: :btree
  add_index "teachers", ["user_id"], name: "index_teachers_on_user_id", using: :btree

  create_table "tests", force: true do |t|
    t.string   "name"
    t.string   "questions"
    t.integer  "teacher_id"
    t.integer  "discipline_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tests", ["discipline_id"], name: "index_tests_on_discipline_id", using: :btree
  add_index "tests", ["teacher_id"], name: "index_tests_on_teacher_id", using: :btree

  create_table "users", force: true do |t|
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
    t.string   "name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
