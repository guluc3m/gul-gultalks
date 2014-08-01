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

ActiveRecord::Schema.define(version: 20140729144844) do

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

  create_table "conferences", force: true do |t|
    t.string   "title",                      limit: 128,  null: false
    t.text     "description",                limit: 1024, null: false
    t.string   "location",                   limit: 32,   null: false
    t.date     "start_date"
    t.date     "end_date"
    t.string   "coordinator",                             null: false
    t.boolean  "active"
    t.boolean  "call_for_papers_enabled",                 null: false
    t.boolean  "voting_enabled"
    t.date     "call_for_papers_start_date",              null: false
    t.date     "call_for_papers_end_date",                null: false
    t.date     "voting_start_date",                       null: false
    t.date     "voting_end_date",                         null: false
    t.string   "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", force: true do |t|
    t.string   "title",                limit: 128,                  null: false
    t.string   "brief_description",                                 null: false
    t.text     "description",          limit: 2048,                 null: false
    t.string   "speaker",              limit: 64,                   null: false
    t.string   "room"
    t.string   "location",             limit: 64
    t.date     "date"
    t.time     "start_time"
    t.time     "end_time"
    t.string   "assisted_by"
    t.string   "speaker_contact_info",                              null: false
    t.integer  "votes",                             default: 0,     null: false
    t.text     "comments",             limit: 2048
    t.integer  "level",                                             null: false
    t.string   "content_url"
    t.boolean  "active",                            default: true
    t.integer  "conference_id"
    t.boolean  "cancelled",                         default: false
    t.string   "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "language",             limit: 2
  end

  create_table "taggings", force: true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context",       limit: 128
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true
  add_index "taggings", ["taggable_id", "taggable_type", "context"], name: "index_taggings_on_taggable_id_and_taggable_type_and_context"

  create_table "tags", force: true do |t|
    t.string  "name"
    t.integer "taggings_count", default: 0
  end

  add_index "tags", ["name"], name: "index_tags_on_name", unique: true

  create_table "verify_events", force: true do |t|
    t.integer  "event_id"
    t.string   "email"
    t.string   "token",        limit: 32
    t.boolean  "validated",               default: false
    t.datetime "validated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
