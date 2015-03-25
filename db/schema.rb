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

ActiveRecord::Schema.define(version: 20150319042220) do

  create_table "buildings", force: :cascade do |t|
    t.string   "code_name"
    t.string   "name"
    t.string   "description"
    t.string   "photo"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "entrances", force: :cascade do |t|
    t.string   "photo"
    t.integer  "building_id"
    t.integer  "location_id"
    t.integer  "floor_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "entrances", ["building_id"], name: "index_entrances_on_building_id"

  create_table "floors", force: :cascade do |t|
    t.string   "code_name"
    t.string   "level"
    t.string   "floorplan"
    t.integer  "building_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "floors", ["building_id"], name: "index_floors_on_building_id"

  create_table "locations", force: :cascade do |t|
    t.string   "code_name"
    t.decimal  "latitude"
    t.decimal  "longitude"
    t.string   "loc_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "paths", force: :cascade do |t|
    t.string   "code_name"
    t.text     "description"
    t.float    "distance"
    t.integer  "start_location_id"
    t.integer  "end_location_id"
    t.float    "direction"
    t.string   "photo"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.string   "code_name"
    t.string   "name"
    t.string   "doortag"
    t.float    "floorplan_x"
    t.float    "floorplan_y"
    t.integer  "floor_id"
    t.integer  "building_id"
    t.integer  "location_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "rooms", ["building_id"], name: "index_rooms_on_building_id"
  add_index "rooms", ["floor_id"], name: "index_rooms_on_floor_id"
  add_index "rooms", ["location_id"], name: "index_rooms_on_location_id"

  create_table "route_constructors", force: :cascade do |t|
    t.integer  "route_id"
    t.integer  "path_id"
    t.integer  "path_order"
    t.float    "turning_direction"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "routes", force: :cascade do |t|
    t.integer  "start_location_id"
    t.integer  "end_location_id"
    t.float    "distance"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
