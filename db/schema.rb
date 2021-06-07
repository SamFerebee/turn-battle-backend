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

ActiveRecord::Schema.define(version: 2021_05_26_001445) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "abilities", force: :cascade do |t|
    t.bigint "specialty_id", null: false
    t.string "name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "image"
    t.integer "cooldown"
    t.index ["specialty_id"], name: "index_abilities_on_specialty_id"
  end

  create_table "entityspecialties", force: :cascade do |t|
    t.bigint "player_id", null: false
    t.bigint "specialty_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["player_id"], name: "index_entityspecialties_on_player_id"
    t.index ["specialty_id"], name: "index_entityspecialties_on_specialty_id"
  end

  create_table "gears", force: :cascade do |t|
    t.string "name"
    t.integer "def_value"
    t.integer "attk_value"
    t.integer "hp_value"
    t.text "set_bonus"
    t.string "set_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "body_part"
    t.integer "cc_immunity"
    t.integer "crit_rate"
    t.integer "crit_dmg"
    t.integer "dodge_chance"
    t.integer "armor_penetration"
    t.integer "price"
    t.string "image"
  end

  create_table "playergears", force: :cascade do |t|
    t.bigint "player_id", null: false
    t.bigint "gear_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["gear_id"], name: "index_playergears_on_gear_id"
    t.index ["player_id"], name: "index_playergears_on_player_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.integer "wins"
    t.integer "losses"
    t.string "password_digest"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "attack"
    t.integer "health"
    t.integer "defense"
    t.bigint "user_id", null: false
    t.bigint "specialty_id", null: false
    t.integer "crit_rate"
    t.integer "crit_dmg"
    t.jsonb "armor"
    t.integer "dodge_chance"
    t.integer "armor_penetration"
    t.integer "cc_immunity"
    t.integer "armored_health"
    t.integer "armored_attack"
    t.integer "armored_defense"
    t.integer "armored_crit_rate"
    t.integer "armored_crit_dmg"
    t.integer "armored_armor_penetration"
    t.integer "armored_dodge_chance"
    t.integer "armored_cc_immunity"
    t.integer "money"
    t.index ["specialty_id"], name: "index_players_on_specialty_id"
    t.index ["user_id"], name: "index_players_on_user_id"
  end

  create_table "specialties", force: :cascade do |t|
    t.string "name"
    t.string "damage_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "health"
    t.integer "attack"
    t.integer "defense"
    t.integer "dodge_chance"
    t.integer "armor_penetration"
    t.integer "cc_immunity"
    t.integer "crit_rate"
    t.integer "crit_dmg"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "abilities", "specialties"
  add_foreign_key "entityspecialties", "players"
  add_foreign_key "entityspecialties", "specialties"
  add_foreign_key "playergears", "gears"
  add_foreign_key "playergears", "players"
  add_foreign_key "players", "specialties"
  add_foreign_key "players", "users"
end
