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

ActiveRecord::Schema.define(version: 2018_05_26_172424) do

<<<<<<< HEAD
  create_table "transactions", force: :cascade do |t|
    t.integer "transakzio_kodea"
    t.integer "bidaltzaile_kontua"
    t.string "azalpena"
    t.integer "hartzaile_kontua"
    t.decimal "kopurua"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

=======
  create_table "Accounts", primary_key: "kontu_zenbakia", id: :string, limit: 24, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "erabiltzaile_id", limit: 9, null: false
    t.index ["erabiltzaile_id"], name: "erabiltzaile_id"
  end

  create_table "Favorites", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "erabiltzaile_id", limit: 9, null: false
    t.string "faborito_id", limit: 9, null: false
    t.index ["erabiltzaile_id"], name: "erabiltzaile_id"
    t.index ["faborito_id"], name: "faborito_id"
  end

  create_table "Transactions", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "bildaltzaile_kontua", limit: 24, null: false
    t.string "hartzaile_kontua", limit: 24, null: false
    t.integer "kopurua", null: false
    t.string "azalpena"
    t.date "data", null: false
    t.index ["bildaltzaile_kontua"], name: "bildaltzaile_kontua"
    t.index ["hartzaile_kontua"], name: "hartzaile_kontua"
  end

  create_table "Users", primary_key: "nan", id: :string, limit: 9, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "izena", limit: 100, null: false
    t.string "abizenak", limit: 100, null: false
    t.string "pasahitza", null: false
    t.string "emaila", limit: 100, null: false
    t.integer "telefonoa", null: false
    t.string "helbidea", null: false
    t.date "sortze_data", null: false
    t.index ["nan"], name: "nan", unique: true
  end

  add_foreign_key "Accounts", "users", column: "erabiltzaile_id", primary_key: "nan", name: "accounts_ibfk_1"
  add_foreign_key "Favorites", "users", column: "erabiltzaile_id", primary_key: "nan", name: "favorites_ibfk_1"
  add_foreign_key "Favorites", "users", column: "faborito_id", primary_key: "nan", name: "favorites_ibfk_2"
  add_foreign_key "Transactions", "accounts", column: "bildaltzaile_kontua", primary_key: "kontu_zenbakia", name: "transactions_ibfk_1"
  add_foreign_key "Transactions", "accounts", column: "hartzaile_kontua", primary_key: "kontu_zenbakia", name: "transactions_ibfk_2"
>>>>>>> 2b83b3e1aa504938ef2a305ae8ee45902e0fd6d4
end
