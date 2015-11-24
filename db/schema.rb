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

ActiveRecord::Schema.define(version: 20151122073028) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "note"
    t.integer  "quantity"
    t.string   "item_type"
    t.integer  "value"
    t.string   "stat1"
    t.string   "stat2"
    t.string   "stat3"
    t.string   "skill1"
    t.string   "skill2"
    t.string   "skill3"
    t.string   "damage"
    t.integer  "owner"
    t.boolean  "equipped?",   default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
