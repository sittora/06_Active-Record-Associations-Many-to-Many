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

ActiveRecord::Schema.define(version: 2021_09_27_195602) do

  create_table "orders", force: :cascade do |t|
    t.string "name"
    t.datetime "date"
  end

  create_table "pizza_orders", force: :cascade do |t|
    t.string "name"
    t.datetime "date"
    t.integer "order_id"
    t.integer "pizza_id"
    t.index ["pizza_id"], name: "index_pizza_orders_on_pizza_id"
  end

  create_table "pizzas", force: :cascade do |t|
    t.string "name"
    t.string "ingredients"
    t.string "desc"
  end

end
