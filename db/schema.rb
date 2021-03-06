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

ActiveRecord::Schema.define(version: 2019_08_04_190941) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "items", force: :cascade do |t|
    t.string "nombre"
    t.string "codigo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scores", force: :cascade do |t|
    t.string "nombre"
    t.date "tiempo1"
    t.date "tiempo2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "student_allergies", force: :cascade do |t|
    t.string "student_id"
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "student_observations", force: :cascade do |t|
    t.string "student_id"
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "nombre"
    t.string "nacimiento"
    t.string "genero"
    t.string "domicilio"
    t.string "nombre_padre"
    t.string "nombre_madre"
    t.string "telefono_contacto"
    t.date "fecha_alta"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "tel_madre"
    t.string "tel_padre"
  end

  create_table "tables", force: :cascade do |t|
    t.string "nombre"
    t.integer "edad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "nombre"
    t.integer "edad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
