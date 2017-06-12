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

ActiveRecord::Schema.define(version: 20170612225818) do

  create_table "pokedexes", force: true do |t|
    t.integer  "numero"
    t.integer  "pokemon_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pokedexes", ["pokemon_id"], name: "index_pokedexes_on_pokemon_id"

  create_table "pokemons", force: true do |t|
    t.string   "nome"
    t.integer  "cp"
    t.integer  "hp"
    t.integer  "treinador_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pokemons", ["treinador_id"], name: "index_pokemons_on_treinador_id"

  create_table "pokemons_tipos", force: true do |t|
    t.integer  "tipo_id"
    t.integer  "pokemon_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pokemons_tipos", ["pokemon_id"], name: "index_tipo_pokemons_on_pokemon_id"
  add_index "pokemons_tipos", ["tipo_id"], name: "index_tipo_pokemons_on_tipo_id"

  create_table "tipos", force: true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "treinadors", force: true do |t|
    t.string   "nome"
    t.string   "regiao"
    t.integer  "pokebolas"
    t.integer  "insignias"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "login"
    t.string   "role"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
  end

end
