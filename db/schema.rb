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

  create_table "transactions", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "transakzio_kodea"
    t.integer "bidaltzaile_kontua"
    t.string "azalpena"
    t.integer "hartzaile_kontua"
    t.decimal "kopurua", precision: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "izena"
    t.string "abizena"
    t.string "pasahitza"
    t.string "emaila"
    t.string "telefonoa"
    t.string "helbidea"
    t.date "sortze_data"
    t.string "nan"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
