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

ActiveRecord::Schema.define(version: 20140607075408) do

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", force: true do |t|
    t.string   "name"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "projects", ["category_id"], name: "index_projects_on_category_id"

  create_table "topics", force: true do |t|
    t.string   "name"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "topics", ["category_id"], name: "index_topics_on_category_id"

  create_table "vote_items", force: true do |t|
    t.integer  "topic_id"
    t.integer  "project_id"
    t.integer  "vote_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "vote_items", ["project_id"], name: "index_vote_items_on_project_id"
  add_index "vote_items", ["topic_id"], name: "index_vote_items_on_topic_id"
  add_index "vote_items", ["vote_id"], name: "index_vote_items_on_vote_id"

  create_table "votes", force: true do |t|
    t.string   "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
