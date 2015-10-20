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

ActiveRecord::Schema.define(version: 20151019055342) do

  create_table "shard_docs", force: :cascade do |t|
    t.integer  "shard_id",          null: false
    t.string   "sha",               null: false
    t.string   "error"
    t.text     "error_description"
    t.datetime "generated_at"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "shard_docs", ["shard_id", "sha"], name: "index_shard_docs_on_shard_id_and_sha", unique: true
  add_index "shard_docs", ["shard_id"], name: "index_shard_docs_on_shard_id"

  create_table "shards", force: :cascade do |t|
    t.string   "hosting",    limit: 20, null: false
    t.string   "owner",                 null: false
    t.string   "name",                  null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "shards", ["hosting", "owner", "name"], name: "idx_shards", unique: true

end
