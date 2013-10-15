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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20131015194632) do

  create_table "activities", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.integer  "proyect_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "archivos", :force => true do |t|
    t.string   "titulo"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.string   "archivo_file_name"
    t.string   "archivo_content_type"
    t.integer  "archivo_file_size"
    t.datetime "archivo_updated_at"
    t.string   "informe_file_name"
    t.string   "informe_content_type"
    t.integer  "informe_file_size"
    t.datetime "informe_updated_at"
  end

  create_table "friendly_id_slugs", :force => true do |t|
    t.string   "slug",                         :null => false
    t.integer  "sluggable_id",                 :null => false
    t.string   "sluggable_type", :limit => 40
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type"], :name => "index_friendly_id_slugs_on_slug_and_sluggable_type", :unique => true
  add_index "friendly_id_slugs", ["sluggable_id"], :name => "index_friendly_id_slugs_on_sluggable_id"
  add_index "friendly_id_slugs", ["sluggable_type"], :name => "index_friendly_id_slugs_on_sluggable_type"

  create_table "movements", :force => true do |t|
    t.float    "ammount"
    t.integer  "proyect_id"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.integer  "rendido_beneficiario"
    t.integer  "rendido_innova"
    t.string   "numero_informe"
    t.string   "fecha_informe"
    t.integer  "aprobado_beneficiario"
    t.integer  "aprobado_innova"
  end

  create_table "proyects", :force => true do |t|
    t.string   "name"
    t.string   "country"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.integer  "generation"
    t.string   "ycode"
    t.boolean  "submitted"
    t.boolean  "readyforjudging"
    t.string   "code"
    t.boolean  "selected"
    t.boolean  "formalized"
    t.string   "et"
    t.string   "arrivalstage"
    t.string   "website"
    t.string   "angellist"
    t.text     "pitch"
    t.boolean  "incorporated"
    t.boolean  "demoday"
    t.boolean  "roundtable"
    t.integer  "fulltpeople"
    t.string   "startupage"
    t.integer  "capitalraisedbefore"
    t.string   "mentorab"
    t.integer  "reapplaying"
    t.string   "hearaboutsup"
    t.datetime "startdate"
    t.datetime "finishdate"
    t.string   "statusnow"
    t.integer  "capitalraisedmusta"
    t.datetime "datemusta"
    t.integer  "capitalraisedmustb"
    t.datetime "datemustb"
    t.string   "industry"
    t.string   "exitstage"
    t.string   "nextprogram"
    t.boolean  "incorpchile"
    t.datetime "dateic"
    t.string   "incorpabroad"
    t.datetime "dateia"
    t.string   "pivoted"
    t.string   "pnewname"
    t.string   "slug"
  end

  add_index "proyects", ["slug"], :name => "index_proyects_on_slug"

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "roles", ["name", "resource_type", "resource_id"], :name => "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], :name => "index_roles_on_name"

  create_table "uploads", :force => true do |t|
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.string   "attached_file_name"
    t.string   "attached_content_type"
    t.integer  "attached_file_size"
    t.datetime "attached_updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "users_roles", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], :name => "index_users_roles_on_user_id_and_role_id"

end
