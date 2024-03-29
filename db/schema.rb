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

ActiveRecord::Schema.define(:version => 20120226180249) do

  create_table "abonent_debits", :force => true do |t|
    t.integer  "abonent_id"
    t.decimal  "amount",           :precision => 6, :scale => 2
    t.integer  "abonent_tarif_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "abonent_debits", ["abonent_id"], :name => "index_abonent_debits_on_abonent_id"

  create_table "abonent_payments", :force => true do |t|
    t.integer  "abonent_id"
    t.decimal  "amount",     :precision => 6, :scale => 2
    t.integer  "platika_id"
    t.boolean  "manual"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "abonent_payments", ["abonent_id"], :name => "index_abonent_payments_on_abonent_id"

  create_table "abonent_saldos", :force => true do |t|
    t.integer  "abonent_id"
    t.decimal  "start_day",  :precision => 6, :scale => 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "abonent_saldos", ["abonent_id"], :name => "index_abonent_saldos_on_abonent_id"

  create_table "abonent_tarifs", :force => true do |t|
    t.string   "name"
    t.decimal  "tarif",      :precision => 6, :scale => 2
    t.boolean  "monthly"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "abonents", :force => true do |t|
    t.integer  "corporation_id"
    t.string   "phone"
    t.integer  "delay",            :default => 0
    t.boolean  "status",           :default => true
    t.integer  "abonent_tarif_id"
    t.string   "name"
    t.boolean  "suspend",          :default => true
    t.date     "start_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "abonents", ["corporation_id"], :name => "index_abonents_on_corporation_id"

  create_table "corporation_debits", :force => true do |t|
    t.integer  "corporation_id"
    t.decimal  "amount",         :precision => 6, :scale => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "corporation_debits", ["corporation_id"], :name => "index_corporation_debits_on_corporation_id"

  create_table "corporation_payments", :force => true do |t|
    t.integer  "corporation_id"
    t.decimal  "amount",         :precision => 6, :scale => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "corporation_payments", ["corporation_id"], :name => "index_corporation_payments_on_corporation_id"

  create_table "corporation_saldos", :force => true do |t|
    t.integer  "corporation_id"
    t.decimal  "startDay",       :precision => 6, :scale => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "corporation_saldos", ["corporation_id"], :name => "index_corporation_saldos_on_corporation_id"

  create_table "corporations", :force => true do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "password"
    t.string   "rate_megafon"
    t.integer  "rate_corpo_id"
    t.integer  "number_count"
    t.decimal  "balance_megafon"
    t.decimal  "balance_corpo"
    t.integer  "status"
    t.integer  "user_id"
    t.string   "corporation"
    t.integer  "delay",           :default => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "corporations", ["rate_corpo_id"], :name => "index_corporations_on_rate_corpo_id"

  create_table "helps", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "news", :force => true do |t|
    t.string   "title"
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rate_corpos", :force => true do |t|
    t.string   "name"
    t.decimal  "pay"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                              :default => "",    :null => false
    t.string   "encrypted_password",  :limit => 128, :default => "",    :null => false
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                      :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
    t.boolean  "admin",                              :default => false
  end

  add_index "users", ["username"], :name => "index_users_on_username", :unique => true

end
