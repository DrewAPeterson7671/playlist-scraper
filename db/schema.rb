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

ActiveRecord::Schema.define(version: 2021_12_02_070922) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "album_lists", force: :cascade do |t|
    t.string "album_list_name"
    t.bigint "album_id"
    t.bigint "artist_id"
    t.bigint "album_position"
    t.string "list_source"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "albums", force: :cascade do |t|
    t.string "album_title"
    t.bigint "year"
    t.bigint "artist_id"
    t.string "album_type"
    t.boolean "completed"
    t.string "collect"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "artist_drafts", force: :cascade do |t|
    t.string "draft_name"
    t.string "draft_genre"
    t.bigint "artist_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "artists", force: :cascade do |t|
    t.string "name"
    t.string "genre1"
    t.string "genre2"
    t.string "genre3"
    t.string "subgenre1"
    t.string "subgenre2"
    t.string "subgenre3"
    t.string "era"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "major_genre"
    t.boolean "pop_list"
    t.boolean "greatest_hits"
    t.string "album_cycle"
    t.string "current_album"
    t.string "last_track"
    t.boolean "finished"
    t.string "catalogued"
    t.bigint "catalogue_priority"
    t.string "collected"
    t.string "collection_priority"
  end

  create_table "playlists", force: :cascade do |t|
    t.string "playlist_name"
    t.bigint "artist_id"
    t.bigint "track_id"
    t.bigint "list_year"
    t.bigint "chart_position"
    t.string "source"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sequencers", force: :cascade do |t|
    t.string "sequencer_name"
    t.bigint "draft_id"
    t.bigint "sequence_position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tracks", force: :cascade do |t|
    t.string "track_title"
    t.bigint "artist_id"
    t.bigint "album_id"
    t.bigint "track_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
