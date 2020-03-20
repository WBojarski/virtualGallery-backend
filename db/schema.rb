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

ActiveRecord::Schema.define(version: 2020_03_20_100536) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "art_piece_collections", force: :cascade do |t|
    t.integer "art_piece_id"
    t.integer "collection_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "art_pieces", force: :cascade do |t|
    t.string "title"
    t.integer "objectID"
    t.boolean "isHighlight"
    t.integer "primaryImage"
    t.string "primaryImageSmall"
    t.string "department"
    t.string "culture"
    t.string "artistDisplayName"
    t.string "artistDisplayBio"
    t.string "artistAlphaSort"
    t.string "artistNationality"
    t.string "artistWikidata_URL"
    t.integer "objectBeginDate"
    t.integer "objectEndDate"
    t.string "medium"
    t.string "dimensions"
    t.string "city"
    t.string "state"
    t.string "country"
    t.string "classification"
    t.string "repository"
    t.string "objectURL"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "collections", force: :cascade do |t|
    t.string "category"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.string "bio"
    t.string "location"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
