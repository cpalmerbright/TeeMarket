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

ActiveRecord::Schema.define(version: 20170424032047) do

  create_table "batches", force: :cascade do |t|
    t.integer  "manufacturer_id"
    t.integer  "quantity"
    t.string   "fabric"
    t.string   "color"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["manufacturer_id"], name: "index_batches_on_manufacturer_id"
  end

  create_table "manufacturers", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "offers", force: :cascade do |t|
    t.integer  "batch_id"
    t.integer  "wholesaler_id"
    t.integer  "amount"
    t.boolean  "accepted"
    t.boolean  "ignored"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["batch_id"], name: "index_offers_on_batch_id"
    t.index ["wholesaler_id"], name: "index_offers_on_wholesaler_id"
  end

  create_table "wholesalers", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
