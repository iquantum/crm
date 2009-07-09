# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090708205004) do

  create_table "contact_statuses", :force => true do |t|
    t.string "value"
  end

  create_table "contacts", :force => true do |t|
    t.string   "first_name"
    t.string   "middle_initial"
    t.string   "last_name"
    t.string   "prefix"
    t.string   "name_preference"
    t.string   "aka"
    t.integer  "status"
    t.string   "job_title"
    t.integer  "best_contact_method"
    t.datetime "date_1"
    t.datetime "date_2"
    t.datetime "date_3"
    t.datetime "date_4"
    t.integer  "company"
    t.integer  "division"
    t.integer  "manager"
    t.integer  "sponsor"
    t.text     "allergies_diet_restrictions"
    t.text     "notes"
    t.string   "bus_email"
    t.string   "bus_phone"
    t.string   "bus_phone_home_office"
    t.string   "bus_phone_alt"
    t.string   "bus_website"
    t.string   "bus_fax"
    t.string   "bus_cell"
    t.string   "bus_phone_intl"
    t.string   "bus_pager"
    t.string   "bus_address_1"
    t.string   "bus_address_2"
    t.string   "bus_address_3"
    t.string   "bus_city"
    t.integer  "bus_state"
    t.string   "bus_postal_code"
    t.integer  "bus_country"
    t.string   "bus_alt_billing_address"
    t.string   "bus_assistant_first_name"
    t.string   "bus_assistant_last_name"
    t.string   "bus_assistant_email"
    t.string   "bus_assistant_phone"
    t.string   "bus_assistant_fax"
    t.string   "per_email"
    t.string   "per_address"
    t.string   "per_city"
    t.integer  "per_state"
    t.string   "per_postal_code"
    t.integer  "per_country"
    t.datetime "per_birthday"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "open_id_authentication_associations", :force => true do |t|
    t.integer "issued"
    t.integer "lifetime"
    t.string  "handle"
    t.string  "assoc_type"
    t.binary  "server_url"
    t.binary  "secret"
  end

  create_table "open_id_authentication_nonces", :force => true do |t|
    t.integer "timestamp",  :null => false
    t.string  "server_url"
    t.string  "salt",       :null => false
  end

  create_table "passwords", :force => true do |t|
    t.integer  "user_id"
    t.string   "reset_code"
    t.datetime "expiration_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", :force => true do |t|
    t.string "name"
  end

  create_table "roles_users", :id => false, :force => true do |t|
    t.integer "role_id"
    t.integer "user_id"
  end

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "users", :force => true do |t|
    t.string   "login",                     :limit => 40
    t.string   "identity_url"
    t.string   "name",                      :limit => 100, :default => ""
    t.string   "email",                     :limit => 100
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.string   "remember_token",            :limit => 40
    t.string   "activation_code",           :limit => 40
    t.string   "state",                                    :default => "passive", :null => false
    t.datetime "remember_token_expires_at"
    t.datetime "activated_at"
    t.datetime "deleted_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["login"], :name => "index_users_on_login", :unique => true

end
