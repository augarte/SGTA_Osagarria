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

ActiveRecord::Schema.define(version: 2018_05_23_181902) do

  create_table "Erabiltzailea", primary_key: "nan", id: :string, limit: 9, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "izena", limit: 100, null: false
    t.string "abizenak", limit: 100, null: false
    t.string "pasahitza", null: false
    t.string "emaila", limit: 100, null: false
    t.integer "telefonoa", null: false
    t.string "helbidea", null: false
    t.date "sortze_data", null: false
    t.index ["nan"], name: "nan", unique: true
  end

  create_table "Faboritoa", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "erabiltzaile_id", limit: 9, null: false
    t.string "faborito_id", limit: 9, null: false
    t.index ["erabiltzaile_id"], name: "erabiltzaile_id"
    t.index ["faborito_id"], name: "faborito_id"
  end

  create_table "Kontua", primary_key: "kontu_zenbakia", id: :string, limit: 24, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "erabiltzaile_id", limit: 9, null: false
    t.index ["erabiltzaile_id"], name: "erabiltzaile_id"
  end

  create_table "Transakzioa", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "bildaltzaile_kontua", limit: 24, null: false
    t.string "hartzaile_kontua", limit: 24, null: false
    t.integer "kopurua", null: false
    t.string "azalpena"
    t.date "data", null: false
    t.index ["bildaltzaile_kontua"], name: "bildaltzaile_kontua"
    t.index ["hartzaile_kontua"], name: "hartzaile_kontua"
  end

  create_table "transactions", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "transakzio_kodea"
    t.integer "bidaltzaile_kz"
    t.string "asuntoa"
    t.date "data"
    t.integer "jasotzaile_kz"
    t.decimal "kopurua", precision: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "Faboritoa", "Erabiltzailea", column: "erabiltzaile_id", primary_key: "nan", name: "faboritoa_ibfk_1"
  add_foreign_key "Faboritoa", "Erabiltzailea", column: "faborito_id", primary_key: "nan", name: "faboritoa_ibfk_2"
  add_foreign_key "Kontua", "Erabiltzailea", column: "erabiltzaile_id", primary_key: "nan", name: "kontua_ibfk_1"
  add_foreign_key "Transakzioa", "Kontua", column: "bildaltzaile_kontua", primary_key: "kontu_zenbakia", name: "transakzioa_ibfk_1"
  add_foreign_key "Transakzioa", "Kontua", column: "hartzaile_kontua", primary_key: "kontu_zenbakia", name: "transakzioa_ibfk_2"
end
