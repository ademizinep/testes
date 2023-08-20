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

ActiveRecord::Schema[7.0].define(version: 2023_08_16_141950) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "form_fields", force: :cascade do |t|
    t.string "name", limit: 128, null: false
    t.bigint "form_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["form_id"], name: "index_form_fields_on_form_id"
  end

  create_table "forms", force: :cascade do |t|
    t.string "name", limit: 256, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "number_choice_fields", force: :cascade do |t|
    t.decimal "choice_number", null: false
    t.string "mask", limit: 128
    t.bigint "number_choice_form_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["number_choice_form_id"], name: "index_number_choice_fields_on_number_choice_form_id"
  end

  create_table "number_choice_forms", force: :cascade do |t|
    t.string "name", limit: 128, null: false
    t.bigint "form_field_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["form_field_id"], name: "index_number_choice_forms_on_form_field_id"
  end

  create_table "text_form_fields", force: :cascade do |t|
    t.datetime "appointment_time", precision: nil, null: false
    t.bigint "text_form_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["text_form_id"], name: "index_text_form_fields_on_text_form_id"
  end

  create_table "text_forms", force: :cascade do |t|
    t.text "description"
    t.bigint "form_field_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["form_field_id"], name: "index_text_forms_on_form_field_id"
  end

  create_table "word_fields", force: :cascade do |t|
    t.string "name", limit: 128, null: false
    t.bigint "word_form_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["word_form_id"], name: "index_word_fields_on_word_form_id"
  end

  create_table "word_forms", force: :cascade do |t|
    t.string "name", limit: 128, null: false
    t.bigint "form_field_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["form_field_id"], name: "index_word_forms_on_form_field_id"
  end

  add_foreign_key "form_fields", "forms"
  add_foreign_key "number_choice_fields", "number_choice_forms"
  add_foreign_key "number_choice_forms", "form_fields"
  add_foreign_key "text_form_fields", "text_forms"
  add_foreign_key "text_forms", "form_fields"
  add_foreign_key "word_fields", "word_forms"
  add_foreign_key "word_forms", "form_fields"
end
