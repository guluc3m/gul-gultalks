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

ActiveRecord::Schema.define(version: 20170517142821) do

  create_table "admins", force: :cascade do |t|
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
    t.integer  "role",                   default: 1,  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true

  create_table "api_keys", force: :cascade do |t|
    t.string   "token"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string   "name",             limit: 64,  null: false
    t.string   "email",            limit: 64
    t.text     "content",          limit: 256
    t.string   "ancestry"
    t.integer  "commentable_id"
    t.string   "commentable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "conferences", force: :cascade do |t|
    t.string   "title",                      limit: 128,                  null: false
    t.text     "description",                limit: 1024,                 null: false
    t.string   "location",                   limit: 32,                   null: false
    t.date     "start_date",                                              null: false
    t.date     "end_date",                                                null: false
    t.string   "coordinator",                                             null: false
    t.boolean  "active",                                                  null: false
    t.boolean  "call_for_papers_enabled",                                 null: false
    t.boolean  "voting_enabled",                                          null: false
    t.boolean  "show_calendar",                           default: false, null: false
    t.date     "call_for_papers_start_date",                              null: false
    t.date     "call_for_papers_end_date",                                null: false
    t.date     "voting_start_date",                                       null: false
    t.date     "voting_end_date",                                         null: false
    t.string   "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", force: :cascade do |t|
    t.string   "title",         limit: 128,                  null: false
    t.string   "summary",                                    null: false
    t.text     "description",   limit: 1400,                 null: false
    t.integer  "subclass",                   default: 0,     null: false
    t.integer  "level",                      default: 0,     null: false
    t.string   "content_url",   limit: 128
    t.string   "code",          limit: 128
    t.string   "language",      limit: 2
    t.text     "notes",         limit: 300
    t.integer  "duration",                   default: 0,     null: false
    t.integer  "votes",                      default: 0,     null: false
    t.string   "live_video",    limit: 128
    t.string   "video",         limit: 128
    t.string   "code_url",      limit: 128
    t.string   "location",      limit: 64
    t.string   "room"
    t.datetime "start_dtime"
    t.datetime "end_dtime"
    t.boolean  "shown",                      default: false
    t.boolean  "verified",                   default: false
    t.boolean  "cancelled",                  default: false
    t.boolean  "accepted",                   default: false
    t.string   "assisted_by"
    t.string   "slug"
    t.integer  "conference_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "token",         limit: 50
  end

  create_table "speakers", force: :cascade do |t|
    t.string   "name",        limit: 64,                 null: false
    t.string   "email",       limit: 64,                 null: false
    t.string   "twitter",     limit: 64
    t.integer  "event_id",                               null: false
    t.boolean  "certificate",            default: false
    t.boolean  "confirmed",              default: true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "taggings", force: :cascade do |t|
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

  create_table "tags", force: :cascade do |t|
    t.string  "name"
    t.integer "taggings_count", default: 0
  end

  add_index "tags", ["name"], name: "index_tags_on_name", unique: true

  create_table "verifiers", force: :cascade do |t|
    t.string   "email",                                  null: false
    t.integer  "event_id",                               null: false
    t.string   "token",       limit: 50,                 null: false
    t.boolean  "verified",               default: false, null: false
    t.string   "verify_type",                            null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
