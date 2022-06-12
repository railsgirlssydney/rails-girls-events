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

ActiveRecord::Schema.define(version: 2016_08_05_033537) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", id: :serial, force: :cascade do |t|
    t.string "full_name"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "applications", id: :serial, force: :cascade do |t|
    t.integer "user_id"
    t.string "track"
    t.boolean "over_18"
    t.string "previous_attendance"
    t.text "programming_experience"
    t.text "reason"
    t.string "tshirt_size"
    t.string "admin_status"
    t.string "user_status"
    t.string "gender"
    t.json "dietary_requirements"
    t.text "extra_info"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "event_id"
  end

  create_table "comments", id: :serial, force: :cascade do |t|
    t.string "title", limit: 50, default: ""
    t.text "comment"
    t.integer "commentable_id"
    t.string "commentable_type"
    t.integer "admin_id"
    t.string "role", default: "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["admin_id"], name: "index_comments_on_admin_id"
    t.index ["commentable_id"], name: "index_comments_on_commentable_id"
    t.index ["commentable_type"], name: "index_comments_on_commentable_type"
  end

  create_table "events", id: :serial, force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "live"
  end

  create_table "users", id: :serial, force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "track"
    t.string "previous_attendance"
    t.text "programming_experience"
    t.text "reason"
    t.string "tshirt_size"
    t.string "admin_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "under_18"
    t.string "user_status"
    t.string "gender"
    t.json "dietary_requirements"
    t.text "extra_info"
  end

  create_table "votes", id: :serial, force: :cascade do |t|
    t.integer "admin_id"
    t.integer "application_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "vote_type"
  end

end
