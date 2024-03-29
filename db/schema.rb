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

ActiveRecord::Schema.define(:version => 20100218040723) do

  create_table "abouts", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "ativo"
    t.string   "texto",      :limit => nil
  end

  create_table "comments", :force => true do |t|
    t.string   "commenter"
    t.text     "body"
    t.integer  "post_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contacts", :force => true do |t|
    t.text     "texto"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "ativo",      :limit => nil
  end

  create_table "curriculos", :force => true do |t|
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "ativo",      :limit => nil
  end

  create_table "cvs", :force => true do |t|
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "ativo",      :limit => nil
  end

  create_table "posts", :force => true do |t|
    t.string   "assunto"
    t.text     "texto"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "resumo"
    t.string   "createdby"
    t.string   "ativo",      :limit => nil
  end

  create_table "tags", :force => true do |t|
    t.string   "tag"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "user"
    t.string   "nome"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
