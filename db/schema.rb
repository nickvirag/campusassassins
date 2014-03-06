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

ActiveRecord::Schema.define(:version => 20140306001253) do

  create_table "players", :force => true do |t|
    t.integer  "account"
    t.integer  "points"
    t.text     "currenttargets"
    t.text     "failedtargets"
    t.text     "succeededtargets"
    t.integer  "user_id"
    t.integer  "season_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "seasons", :force => true do |t|
    t.datetime "start"
    t.datetime "end"
    t.string   "display"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "targets"
    t.string   "description"
  end

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "users", :force => true do |t|
    t.integer  "account"
    t.integer  "points"
    t.text     "currenttargets"
    t.text     "failedtargets"
    t.text     "succeededtargets"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "refresh_token"
    t.string   "access_token"
    t.datetime "expires"
  end

  create_table "usersforseasons", :force => true do |t|
    t.integer  "account"
    t.integer  "points"
    t.text     "currenttargets"
    t.text     "failedtargets"
    t.text     "succeededtargets"
    t.integer  "user_id"
    t.integer  "season_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

end
