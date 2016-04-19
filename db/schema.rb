# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160419171504) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "argonautica_people", force: :cascade do |t|
    t.string   "name"
    t.string   "tribe"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "origin_id"
  end

  create_table "groupings", force: :cascade do |t|
    t.integer  "inscription_id"
    t.integer  "priesthood_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "priesthoods_id"
    t.integer  "inscriptions_id"
  end

  add_index "groupings", ["inscription_id"], name: "index_groupings_on_inscription_id", using: :btree
  add_index "groupings", ["inscriptions_id"], name: "index_groupings_on_inscriptions_id", using: :btree
  add_index "groupings", ["priesthood_id"], name: "index_groupings_on_priesthood_id", using: :btree
  add_index "groupings", ["priesthoods_id"], name: "index_groupings_on_priesthoods_id", using: :btree

  create_table "individuals", force: :cascade do |t|
    t.string   "name"
    t.string   "patronym"
    t.integer  "inscription_id"
    t.text     "comments"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "site_id"
    t.integer  "site_origin_id"
    t.string   "identification"
  end

  add_index "individuals", ["inscription_id"], name: "index_individuals_on_inscription_id", using: :btree
  add_index "individuals", ["site_id"], name: "index_individuals_on_site_id", using: :btree
  add_index "individuals", ["site_origin_id"], name: "index_individuals_on_site_origin_id", using: :btree

  create_table "inscriptions", force: :cascade do |t|
    t.string   "name"
    t.string   "source"
    t.string   "Alt_Name"
    t.string   "start_date"
    t.string   "end_date"
    t.string   "date_info"
    t.text     "Inscription_text"
    t.text     "Bibliography"
    t.text     "Comments"
    t.text     "Dating_Certainty"
    t.float    "StartDate_CE"
    t.float    "EndDate_CE"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "find_spot_id"
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
  end

  add_index "inscriptions", ["find_spot_id"], name: "index_inscriptions_on_find_spot_id", using: :btree

  create_table "koinas", force: :cascade do |t|
    t.integer  "site_id"
    t.integer  "inscription_id"
    t.integer  "membercount"
    t.string   "activities"
    t.text     "comments"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "koinas", ["inscription_id"], name: "index_koinas_on_inscription_id", using: :btree
  add_index "koinas", ["site_id"], name: "index_koinas_on_site_id", using: :btree

  create_table "markers", force: :cascade do |t|
    t.string   "marker_name"
    t.string   "marker_kind"
    t.integer  "site_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "markers", ["site_id"], name: "index_markers_on_site_id", using: :btree

  create_table "places_referenceds", force: :cascade do |t|
    t.integer  "place_referenced_id"
    t.string   "line_number"
    t.string   "type_of_reference"
    t.integer  "referenced_by_id"
    t.integer  "previous_place_id"
    t.integer  "next_place_id"
    t.string   "ritual"
    t.string   "ritual_deity"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "places_referenceds", ["next_place_id"], name: "index_places_referenceds_on_next_place_id", using: :btree
  add_index "places_referenceds", ["place_referenced_id"], name: "index_places_referenceds_on_place_referenced_id", using: :btree
  add_index "places_referenceds", ["previous_place_id"], name: "index_places_referenceds_on_previous_place_id", using: :btree
  add_index "places_referenceds", ["referenced_by_id"], name: "index_places_referenceds_on_referenced_by_id", using: :btree

  create_table "priesthoods", force: :cascade do |t|
    t.string   "identification"
    t.string   "name"
    t.string   "title"
    t.string   "deity_identification"
    t.string   "deity"
    t.string   "duration"
    t.string   "att_honor"
    t.string   "cer_ritual"
    t.text     "comments"
    t.integer  "role_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "location_id"
    t.integer  "inscription_id"
    t.integer  "groupings_id"
  end

  add_index "priesthoods", ["groupings_id"], name: "index_priesthoods_on_groupings_id", using: :btree
  add_index "priesthoods", ["inscription_id"], name: "index_priesthoods_on_inscription_id", using: :btree
  add_index "priesthoods", ["role_id"], name: "index_priesthoods_on_role_id", using: :btree

  create_table "roles", force: :cascade do |t|
    t.string   "rolenumber"
    t.integer  "individual_id"
    t.string   "title"
    t.decimal  "certainty"
    t.text     "comments"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "roles", ["individual_id"], name: "index_roles_on_individual_id", using: :btree

  create_table "sites", force: :cascade do |t|
    t.string   "name"
    t.string   "mod_name"
    t.string   "alt_name"
    t.decimal  "latitude",     precision: 6, scale: 4
    t.decimal  "longitude",    precision: 6, scale: 4
    t.float    "elevation"
    t.string   "pleiades_url"
    t.string   "perseus_url"
    t.string   "caption"
    t.text     "paragraph"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  create_table "stops", force: :cascade do |t|
    t.integer  "place_of_stop_id"
    t.integer  "previous_place_id"
    t.integer  "next_place_id"
    t.string   "type_of_stop"
    t.string   "line_number"
    t.string   "ritual"
    t.string   "ritual_deity"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "crew_id"
    t.integer  "ritual_people_id"
    t.integer  "stops_people_id"
  end

  add_index "stops", ["crew_id"], name: "index_stops_on_crew_id", using: :btree
  add_index "stops", ["next_place_id"], name: "index_stops_on_next_place_id", using: :btree
  add_index "stops", ["place_of_stop_id"], name: "index_stops_on_place_of_stop_id", using: :btree
  add_index "stops", ["previous_place_id"], name: "index_stops_on_previous_place_id", using: :btree
  add_index "stops", ["ritual_people_id"], name: "index_stops_on_ritual_people_id", using: :btree
  add_index "stops", ["stops_people_id"], name: "index_stops_on_stops_people_id", using: :btree

  create_table "stops_people", force: :cascade do |t|
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "crew_id"
    t.integer  "ritual_people_id"
    t.integer  "argonautica_people_id"
    t.integer  "stops_id"
    t.integer  "argonautica_person_id"
    t.integer  "stop_id"
    t.integer  "ritual_person_id"
  end

  add_index "stops_people", ["argonautica_people_id"], name: "index_stops_people_on_argonautica_people_id", using: :btree
  add_index "stops_people", ["argonautica_person_id"], name: "index_stops_people_on_argonautica_person_id", using: :btree
  add_index "stops_people", ["crew_id"], name: "index_stops_people_on_crew_id", using: :btree
  add_index "stops_people", ["ritual_people_id"], name: "index_stops_people_on_ritual_people_id", using: :btree
  add_index "stops_people", ["ritual_person_id"], name: "index_stops_people_on_ritual_person_id", using: :btree
  add_index "stops_people", ["stop_id"], name: "index_stops_people_on_stop_id", using: :btree
  add_index "stops_people", ["stops_id"], name: "index_stops_people_on_stops_id", using: :btree

  add_foreign_key "argonautica_people", "sites", column: "origin_id"
  add_foreign_key "groupings", "inscriptions"
  add_foreign_key "groupings", "priesthoods"
  add_foreign_key "individuals", "inscriptions"
  add_foreign_key "individuals", "sites"
  add_foreign_key "individuals", "sites", column: "site_origin_id"
  add_foreign_key "koinas", "inscriptions"
  add_foreign_key "koinas", "sites"
  add_foreign_key "markers", "sites"
  add_foreign_key "priesthoods", "roles"
  add_foreign_key "roles", "individuals"
  add_foreign_key "stops", "sites", column: "next_place_id"
  add_foreign_key "stops", "sites", column: "place_of_stop_id"
  add_foreign_key "stops", "sites", column: "previous_place_id"
end
