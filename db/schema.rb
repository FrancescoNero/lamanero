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

ActiveRecord::Schema.define(:version => 20130617144447) do

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "categories_products", :id => false, :force => true do |t|
    t.integer "category_id"
    t.integer "product_id"
  end

  create_table "designers", :force => true do |t|
    t.string   "title"
    t.text     "biography"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "designers_products", :id => false, :force => true do |t|
    t.integer "designer_id"
    t.integer "product_id"
  end

  create_table "images", :force => true do |t|
    t.text     "alt"
    t.string   "image"
    t.integer  "attachable_id"
    t.string   "attachable_type"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "images", ["attachable_id"], :name => "index_images_on_attachable_id"

  create_table "infos", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "partners", :force => true do |t|
    t.string   "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "partners_products", :id => false, :force => true do |t|
    t.integer "partner_id"
    t.integer "product_id"
  end

  create_table "products", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.text     "tech_info"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "products_retailers", :id => false, :force => true do |t|
    t.integer "product_id"
    t.integer "retailer_id"
  end

  create_table "products_rooms", :id => false, :force => true do |t|
    t.integer "product_id"
    t.integer "room_id"
  end

  create_table "products_services", :id => false, :force => true do |t|
    t.integer "product_id"
    t.integer "service_id"
  end

  create_table "retailers", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "address"
    t.string   "city"
    t.string   "telephone"
    t.string   "email"
  end

  create_table "retailers_services", :id => false, :force => true do |t|
    t.integer "retailer_id"
    t.integer "service_id"
  end

  create_table "rooms", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "services", :force => true do |t|
    t.string   "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
