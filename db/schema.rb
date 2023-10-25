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

ActiveRecord::Schema[7.1].define(version: 2023_10_25_202653) do
  create_table "pokemon_gens", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pokemon_infos", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "height"
    t.integer "weight"
    t.integer "pokemon_stat_id", null: false
    t.integer "pokemon_rank_id", null: false
    t.integer "pokemon_gen_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "location"
    t.index ["pokemon_gen_id"], name: "index_pokemon_infos_on_pokemon_gen_id"
    t.index ["pokemon_rank_id"], name: "index_pokemon_infos_on_pokemon_rank_id"
    t.index ["pokemon_stat_id"], name: "index_pokemon_infos_on_pokemon_stat_id"
  end

  create_table "pokemon_ranks", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pokemon_stats", force: :cascade do |t|
    t.integer "hp"
    t.integer "attack"
    t.integer "defense"
    t.integer "spatk"
    t.integer "spdef"
    t.integer "speed"
    t.integer "total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pokemon_types", force: :cascade do |t|
    t.integer "pokemon_info_id", null: false
    t.integer "type_name_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pokemon_info_id"], name: "index_pokemon_types_on_pokemon_info_id"
    t.index ["type_name_id"], name: "index_pokemon_types_on_type_name_id"
  end

  create_table "type_names", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "pokemon_infos", "pokemon_gens"
  add_foreign_key "pokemon_infos", "pokemon_ranks"
  add_foreign_key "pokemon_infos", "pokemon_stats"
  add_foreign_key "pokemon_types", "pokemon_infos"
  add_foreign_key "pokemon_types", "type_names"
end
