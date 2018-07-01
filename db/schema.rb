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

ActiveRecord::Schema.define(version: 20180529123358) do

  create_table "delayed_jobs", force: :cascade do |t|
    t.integer  "priority",   default: 0, null: false
    t.integer  "attempts",   default: 0, null: false
    t.text     "handler",                null: false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "delayed_jobs", ["priority", "run_at"], name: "delayed_jobs_priority"

  create_table "ketcherails_amino_acids", force: :cascade do |t|
    t.integer  "moderated_by"
    t.integer  "suggested_by"
    t.string   "name",                          null: false
    t.text     "molfile",                       null: false
    t.integer  "aid",               default: 1, null: false
    t.integer  "aid2",              default: 1, null: false
    t.integer  "bid",               default: 1, null: false
    t.string   "icon_path"
    t.string   "sprite_class"
    t.string   "status"
    t.text     "notes"
    t.datetime "approved_at"
    t.datetime "rejected_at"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.string   "icon_file_name"
    t.string   "icon_content_type"
    t.integer  "icon_file_size"
    t.datetime "icon_updated_at"
  end

  add_index "ketcherails_amino_acids", ["moderated_by"], name: "index_ketcherails_amino_acids_on_moderated_by"
  add_index "ketcherails_amino_acids", ["name"], name: "index_ketcherails_amino_acids_on_name"
  add_index "ketcherails_amino_acids", ["suggested_by"], name: "index_ketcherails_amino_acids_on_suggested_by"

  create_table "ketcherails_atom_abbreviations", force: :cascade do |t|
    t.integer  "moderated_by"
    t.integer  "suggested_by"
    t.string   "name",                          null: false
    t.text     "molfile",                       null: false
    t.integer  "aid",               default: 1, null: false
    t.integer  "bid",               default: 1, null: false
    t.string   "icon_path"
    t.string   "sprite_class"
    t.string   "status"
    t.text     "notes"
    t.datetime "approved_at"
    t.datetime "rejected_at"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.string   "icon_file_name"
    t.string   "icon_content_type"
    t.integer  "icon_file_size"
    t.datetime "icon_updated_at"
    t.string   "rtl_name"
  end

  add_index "ketcherails_atom_abbreviations", ["moderated_by"], name: "index_ketcherails_atom_abbreviations_on_moderated_by"
  add_index "ketcherails_atom_abbreviations", ["name"], name: "index_ketcherails_atom_abbreviations_on_name"
  add_index "ketcherails_atom_abbreviations", ["suggested_by"], name: "index_ketcherails_atom_abbreviations_on_suggested_by"

  create_table "ketcherails_common_templates", force: :cascade do |t|
    t.integer  "moderated_by"
    t.integer  "suggested_by"
    t.string   "name",                 null: false
    t.text     "molfile",              null: false
    t.string   "icon_path"
    t.string   "sprite_class"
    t.text     "notes"
    t.datetime "approved_at"
    t.datetime "rejected_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "template_category_id"
    t.string   "status"
    t.string   "icon_file_name"
    t.string   "icon_content_type"
    t.integer  "icon_file_size"
    t.datetime "icon_updated_at"
  end

  add_index "ketcherails_common_templates", ["moderated_by"], name: "index_ketcherails_common_templates_on_moderated_by"
  add_index "ketcherails_common_templates", ["name"], name: "index_ketcherails_common_templates_on_name"
  add_index "ketcherails_common_templates", ["suggested_by"], name: "index_ketcherails_common_templates_on_suggested_by"

  create_table "ketcherails_custom_templates", force: :cascade do |t|
    t.integer  "user_id",      null: false
    t.string   "name",         null: false
    t.text     "molfile",      null: false
    t.string   "icon_path"
    t.string   "sprite_class"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ketcherails_custom_templates", ["user_id"], name: "index_ketcherails_custom_templates_on_user_id"

  create_table "ketcherails_template_categories", force: :cascade do |t|
    t.string   "name",              null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "icon_file_name"
    t.string   "icon_content_type"
    t.integer  "icon_file_size"
    t.datetime "icon_updated_at"
    t.string   "sprite_class"
  end

end
