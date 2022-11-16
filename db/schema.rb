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

ActiveRecord::Schema[7.0].define(version: 2022_11_16_151019) do
  create_table "docs", force: :cascade do |t|
    t.string "empresa"
    t.string "tipo"
    t.string "rut"
    t.string "numero"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "empresa_emisoras", force: :cascade do |t|
    t.string "nombre"
    t.string "rut"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "empresa_grupos", force: :cascade do |t|
    t.string "nombre"
    t.string "rut"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "informacion_documentos", force: :cascade do |t|
    t.integer "numero_documento"
    t.date "fecha_emision"
    t.date "fecha_vencimiento"
    t.float "neto"
    t.float "iva"
    t.float "exento"
    t.float "total"
    t.bigint "empresa_emisora_id", null: false
    t.bigint "empresa_grupo_id", null: false
    t.bigint "tipo_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "estado"
    t.index ["empresa_emisora_id"], name: "index_informacion_documentos_on_empresa_emisora_id"
    t.index ["empresa_grupo_id"], name: "index_informacion_documentos_on_empresa_grupo_id"
    t.index ["tipo_id"], name: "index_informacion_documentos_on_tipo_id"
  end

  create_table "tipos", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "informacion_documentos", "empresa_emisoras"
  add_foreign_key "informacion_documentos", "empresa_grupos"
  add_foreign_key "informacion_documentos", "tipos"
end
