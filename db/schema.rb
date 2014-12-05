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

ActiveRecord::Schema.define(version: 20141205000834) do

  create_table "computers", force: true do |t|
    t.string   "name"
    t.boolean  "status"
    t.integer  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "hd_id"
    t.integer  "motherboard_id"
    t.integer  "ram_id"
    t.integer  "gpu_id"
    t.integer  "cpu_id"
    t.integer  "power_id"
  end

  add_index "computers", ["name"], name: "index_computers_on_name", unique: true

  create_table "cpus", force: true do |t|
    t.decimal  "price"
    t.string   "speed"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "mb_compad"
    t.integer  "watts"
    t.string   "name"
    t.integer  "cores"
    t.string   "creator"
  end

  create_table "gpus", force: true do |t|
    t.decimal  "price"
    t.string   "vram"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "mb_compad"
    t.integer  "watts"
    t.string   "name"
    t.string   "creator"
  end

  create_table "hds", force: true do |t|
    t.decimal  "price"
    t.string   "size"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "mb_compad"
    t.integer  "watts"
    t.string   "name"
    t.string   "creator"
  end

  create_table "motherboards", force: true do |t|
    t.decimal  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "cpu_compad"
    t.string   "gpu_compad"
    t.string   "ram_compad"
    t.string   "hd_compad"
    t.integer  "watts"
    t.string   "name"
    t.string   "creator"
  end

  create_table "powers", force: true do |t|
    t.decimal  "price"
    t.integer  "watts"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "creator"
  end

  create_table "rams", force: true do |t|
    t.decimal  "price"
    t.string   "size"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "mb_compad"
    t.integer  "watts"
    t.string   "name"
    t.string   "creator"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_digest"
    t.string   "password_digest"
  end

end
