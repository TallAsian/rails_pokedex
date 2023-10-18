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

ActiveRecord::Schema[7.1].define(version: 2023_10_18_211028) do
  create_table "pokemon_infos", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "rank"
    t.string "generation"
    t.integer "pokemon_stats_id", null: false
    t.integer "pokemon_sizes_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pokemon_sizes_id"], name: "index_pokemon_infos_on_pokemon_sizes_id"
    t.index ["pokemon_stats_id"], name: "index_pokemon_infos_on_pokemon_stats_id"
  end

  create_table "pokemon_sizes", force: :cascade do |t|
    t.integer "height"
    t.integer "weight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pokemon_stats", force: :cascade do |t|
    t.integer "total"
    t.integer "hp"
    t.integer "attack"
    t.integer "defense"
    t.integer "spatk"
    t.integer "spdef"
    t.integer "speed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pokemon_types", force: :cascade do |t|
    t.integer "pokemon_infos_id", null: false
    t.integer "type_names_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pokemon_infos_id"], name: "index_pokemon_types_on_pokemon_infos_id"
    t.index ["type_names_id"], name: "index_pokemon_types_on_type_names_id"
  end

  create_table "type_names", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "pokemon_infos", "pokemon_sizes", column: "pokemon_sizes_id"
  add_foreign_key "pokemon_infos", "pokemon_stats", column: "pokemon_stats_id"
  add_foreign_key "pokemon_types", "pokemon_infos", column: "pokemon_infos_id"
  add_foreign_key "pokemon_types", "type_names", column: "type_names_id"
end
