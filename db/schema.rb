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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130526155852) do

  create_table "admins", :force => true do |t|
    t.string   "name"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.datetime "last_visit"
  end

  create_table "subjects", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "subjects_teachers", :id => false, :force => true do |t|
    t.integer "subject_id"
    t.integer "teacher_id"
  end

  add_index "subjects_teachers", ["subject_id", "teacher_id"], :name => "index_subjects_teachers_on_subject_id_and_teacher_id"

  create_table "teachers", :force => true do |t|
    t.string   "fname"
    t.string   "sname"
    t.string   "lname"
    t.string   "position"
    t.string   "rank"
    t.string   "email"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
