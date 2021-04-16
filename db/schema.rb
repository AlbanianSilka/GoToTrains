# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_04_15_131831) do

  create_table "cars", force: :cascade do |t|
    t.integer "number"
    t.integer "top_seats"
    t.integer "lower_seats"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "train_id"
    t.string "type"
    t.integer "side_seats_top"
    t.integer "side_seats_bottom"
    t.integer "sitting_seats"
    t.index ["train_id"], name: "index_cars_on_train_id"
  end

  create_table "railway_stations", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "railway_stations_routes", force: :cascade do |t|
    t.integer "railway_station_id"
    t.integer "route_id"
    t.integer "number"
    t.datetime "arrival_time"
    t.datetime "departure_time"
    t.index ["railway_station_id"], name: "index_railway_stations_routes_on_railway_station_id"
    t.index ["route_id"], name: "index_railway_stations_routes_on_route_id"
  end

  create_table "routes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tickets", force: :cascade do |t|
    t.integer "user_id"
    t.integer "train_id"
    t.integer "first_station_id"
    t.integer "last_station_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "user_first_name"
    t.text "user_last_name"
    t.text "user_passport"
  end

  create_table "trains", force: :cascade do |t|
    t.integer "number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "route_id"
    t.integer "current_station_id"
    t.boolean "direction"
    t.index ["route_id"], name: "index_trains_on_route_id"
  end

  create_table "trains_routes", force: :cascade do |t|
    t.integer "train_id"
    t.integer "route_id"
    t.index ["route_id"], name: "index_trains_routes_on_route_id"
    t.index ["train_id"], name: "index_trains_routes_on_train_id"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
  end

end
