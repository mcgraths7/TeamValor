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

ActiveRecord::Schema.define(version: 20160715011905) do

  create_table "battles", force: :cascade do |t|
    t.integer "friend_id"
    t.integer "foe_id"
  end

  create_table "elements", force: :cascade do |t|
    t.string "name"
  end

  create_table "evolvers", force: :cascade do |t|
    t.integer "user_pokemon_id"
  end

  create_table "gyms", force: :cascade do |t|
    t.string "name"
    t.string "location"
  end

  create_table "leaders", force: :cascade do |t|
    t.integer "user_id"
  end

  create_table "multipliers", force: :cascade do |t|
    t.integer "friend_element_id"
    t.integer "foe_element_id"
    t.float   "amount"
  end

  create_table "pokemons", force: :cascade do |t|
    t.string  "name"
    t.integer "element_id"
    t.integer "starting_level"
    t.integer "next_id"
  end

  create_table "rank_adjusters", force: :cascade do |t|
    t.integer "friend_id"
    t.integer "foe_id"
  end

  create_table "trainers", force: :cascade do |t|
    t.integer "user_id"
  end

  create_table "user_pokemons", force: :cascade do |t|
    t.string  "nickname"
    t.integer "user_id"
    t.integer "pokemon_id"
    t.integer "level"
    t.string  "element"
    t.integer "battle_power"
  end

  create_table "users", force: :cascade do |t|
    t.string  "name"
    t.integer "age"
    t.string  "password_digest"
    t.string  "catchphrase"
    t.integer "gym_id"
    t.integer "rank",            default: 1
  end

end
