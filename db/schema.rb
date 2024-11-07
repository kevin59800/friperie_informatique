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

ActiveRecord::Schema[7.1].define(version: 2024_11_06_075040) do
  create_table "annonces", force: :cascade do |t|
    t.integer "utilisateur_id"
    t.integer "equipement_id"
    t.string "etat", null: false
    t.decimal "prix", precision: 10, scale: 2
    t.text "description"
    t.datetime "date_publication", precision: nil, default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["equipement_id"], name: "index_annonces_on_equipement_id"
    t.index ["utilisateur_id"], name: "index_annonces_on_utilisateur_id"
  end

  create_table "equipements", force: :cascade do |t|
    t.string "nom", null: false
    t.string "type", null: false
    t.integer "fabricant_id"
    t.date "date_production"
    t.date "fin_de_production"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fabricant_id"], name: "index_equipements_on_fabricant_id"
  end

  create_table "fabricants", force: :cascade do |t|
    t.string "nom_fabricant", null: false
    t.string "pays_origine"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "utilisateurs", force: :cascade do |t|
    t.string "nom_utilisateur", null: false
    t.string "email", null: false
    t.string "adresse"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "annonces", "equipements"
  add_foreign_key "annonces", "utilisateurs"
  add_foreign_key "equipements", "fabricants"
end
