# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_30_050806) do

  create_table "assignments", force: :cascade do |t|
    t.string "title"
    t.text "discription"
    t.string "deadline"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "label_id"
    t.string "color"
    t.index ["label_id"], name: "index_assignments_on_label_id"
    t.index ["user_id"], name: "index_assignments_on_user_id"
  end

  create_table "labels", force: :cascade do |t|
    t.string "color"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.integer "assignment_id"
    t.index ["assignment_id"], name: "index_labels_on_assignment_id"
    t.index ["user_id"], name: "index_labels_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "assignments", "labels"
  add_foreign_key "assignments", "users"
  add_foreign_key "labels", "assignments"
  add_foreign_key "labels", "users"
end
