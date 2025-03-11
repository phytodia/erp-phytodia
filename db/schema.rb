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

ActiveRecord::Schema[7.2].define(version: 2025_03_11_130933) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "analyses", force: :cascade do |t|
    t.string "code"
    t.text "description"
    t.boolean "amv"
    t.string "code_mo"
    t.float "price"
    t.bigint "echantillon_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["echantillon_id"], name: "index_analyses_on_echantillon_id"
  end

  create_table "clients", force: :cascade do |t|
    t.string "code"
    t.string "society"
    t.string "mail_contact"
    t.string "mail_resultat"
    t.boolean "amv", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "echantillons", force: :cascade do |t|
    t.string "code"
    t.text "description"
    t.integer "n_lot"
    t.string "reception_date"
    t.bigint "prestation_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["prestation_id"], name: "index_echantillons_on_prestation_id"
  end

  create_table "prestations", force: :cascade do |t|
    t.bigint "client_id", null: false
    t.string "code"
    t.string "n_devis"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_prestations_on_client_id"
  end

  add_foreign_key "analyses", "echantillons"
  add_foreign_key "echantillons", "prestations"
  add_foreign_key "prestations", "clients"
end
