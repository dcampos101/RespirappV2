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

ActiveRecord::Schema.define(version: 20181024213200) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "consumers", force: :cascade do |t|
    t.bigint "user_id"
    t.string "nombre"
    t.string "correo"
    t.string "telefono"
    t.string "clave"
    t.text "direccion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_consumers_on_user_id"
  end

  create_table "contamination_levels", force: :cascade do |t|
    t.string "nombre"
    t.string "descripcion"
    t.string "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "report_types", force: :cascade do |t|
    t.string "nombre"
    t.string "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reports", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "contamination_level_id"
    t.bigint "report_type_id"
    t.string "ubicacion_lat"
    t.string "ubicacion_long"
    t.text "imagen"
    t.string "observacion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contamination_level_id"], name: "index_reports_on_contamination_level_id"
    t.index ["report_type_id"], name: "index_reports_on_report_type_id"
    t.index ["user_id"], name: "index_reports_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "consumers", "users"
  add_foreign_key "reports", "contamination_levels"
  add_foreign_key "reports", "report_types"
  add_foreign_key "reports", "users"
end
