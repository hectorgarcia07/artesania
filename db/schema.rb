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

ActiveRecord::Schema.define(version: 2020_09_14_232421) do

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "categories", force: :cascade do |t|
    t.string "productType"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["productType"], name: "index_categories_on_productType"
  end

  create_table "categorizations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "product_id"
    t.integer "category_id"
    t.index ["category_id"], name: "index_categorizations_on_category_id"
    t.index ["product_id"], name: "index_categorizations_on_product_id"
  end

  create_table "color_by_sizes", force: :cascade do |t|
    t.integer "product_id"
    t.string "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "MX"
    t.string "US"
    t.integer "quantity"
    t.index ["MX"], name: "index_color_by_sizes_on_MX"
    t.index ["US"], name: "index_color_by_sizes_on_US"
    t.index ["color"], name: "index_color_by_sizes_on_color"
    t.index ["product_id", "MX", "US"], name: "index_color_by_sizes_on_product_id_and_MX_and_US", unique: true
    t.index ["product_id"], name: "index_color_by_sizes_on_product_id"
    t.index ["quantity"], name: "index_color_by_sizes_on_quantity"
  end

  create_table "products", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
    t.string "name"
    t.string "gender"
    t.string "age"
    t.decimal "price", precision: 8, scale: 2
    t.index ["age"], name: "index_products_on_age"
    t.index ["gender"], name: "index_products_on_gender"
    t.index ["price"], name: "index_products_on_price"
  end

end
