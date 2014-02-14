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

ActiveRecord::Schema.define(version: 20131221124707) do

  create_table "conferences", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "coordinator"
    t.boolean  "active"
    t.boolean  "call_for_papers_enabled"
    t.boolean  "voting_enabled"
    t.date     "call_for_papers_start_date"
    t.date     "call_for_papers_end_date"
    t.date     "voting_start_date"
    t.date     "voting_end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "talks", force: true do |t|
    t.string   "title"
    t.string   "brief_description"
    t.string   "description"
    t.string   "speaker"
    t.string   "room"
    t.date     "date"
    t.time     "start_time"
    t.time     "end_time"
    t.string   "assisted_by"
    t.string   "speaker_contact_info"
    t.integer  "votes"
    t.string   "comments"
    t.integer  "level"
    t.string   "tags"
    t.string   "content_url"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "conference_id"
  end

end
