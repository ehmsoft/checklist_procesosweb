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

ActiveRecord::Schema.define(:version => 20130718205253) do

  create_table "ciudades", :force => true do |t|
    t.string   "nombre"
    t.string   "departamento"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "juzgados", :force => true do |t|
    t.string   "nombre"
    t.string   "direccion"
    t.integer  "ciudad_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "juzgados", ["ciudad_id"], :name => "index_juzgados_on_ciudad_id"

  create_table "rondas", :force => true do |t|
    t.date     "fecha"
    t.integer  "usuario_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "rondas", ["usuario_id"], :name => "index_rondas_on_usuario_id"

  create_table "usuarios", :force => true do |t|
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

  add_index "usuarios", ["email"], :name => "index_usuarios_on_email", :unique => true
  add_index "usuarios", ["reset_password_token"], :name => "index_usuarios_on_reset_password_token", :unique => true

  create_table "visita_diarias", :force => true do |t|
    t.integer  "juzgado_id"
    t.boolean  "estados",     :default => false
    t.integer  "n_estados",   :default => 0
    t.boolean  "edictos",     :default => false
    t.integer  "n_edictos",   :default => 0
    t.boolean  "traslados",   :default => false
    t.integer  "n_traslados", :default => 0
    t.boolean  "nada",        :default => false
    t.integer  "ronda_id"
    t.date     "fecha"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
    t.text     "notas"
  end

  add_index "visita_diarias", ["juzgado_id"], :name => "index_visita_diarias_on_juzgado_id"
  add_index "visita_diarias", ["ronda_id"], :name => "index_visita_diarias_on_ronda_id"

end
