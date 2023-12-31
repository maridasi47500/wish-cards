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

ActiveRecord::Schema[7.0].define(version: 2023_06_20_183426) do
  create_table "emails", force: :cascade do |t|
    t.string "title"
    t.string "email"
    t.integer "message_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", force: :cascade do |t|
    t.integer "user_id"
    t.integer "room_id"
    t.string "sent_by"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "height"
    t.integer "width"
    t.integer "bodyx"
    t.integer "bodyy"
    t.string "image"
    t.string "music"
  end

  create_table "picanimations", force: :cascade do |t|
    t.integer "pic_id"
    t.string "percent"
    t.string "translatex"
    t.string "translatey"
    t.string "rotate"
    t.string "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pics", force: :cascade do |t|
    t.integer "message_id"
    t.string "filename"
    t.string "x"
    t.string "y"
    t.string "width"
    t.string "height"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "transparent"
    t.string "fond"
    t.integer "zindex"
    t.integer "duration"
    t.integer "delay"
  end

  create_table "rooms", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "textanimations", force: :cascade do |t|
    t.integer "text_id"
    t.string "percent"
    t.string "translatex"
    t.string "translatey"
    t.string "rotate"
    t.string "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "texts", force: :cascade do |t|
    t.integer "message_id"
    t.text "content"
    t.string "size"
    t.string "color"
    t.integer "weight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "x"
    t.string "y"
    t.string "fond"
    t.boolean "transparent"
    t.integer "zindex"
    t.integer "duration"
    t.integer "delay"
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

end
