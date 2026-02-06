# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.1].define(version: 2026_02_06_063751) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "action_mailbox_inbound_emails", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "message_checksum", null: false
    t.string "message_id", null: false
    t.integer "status", default: 0, null: false
    t.datetime "updated_at", null: false
    t.index ["message_id", "message_checksum"], name: "index_action_mailbox_inbound_emails_uniqueness", unique: true
  end

  create_table "action_text_rich_texts", force: :cascade do |t|
    t.text "body"
    t.datetime "created_at", null: false
    t.string "name", null: false
    t.bigint "record_id", null: false
    t.string "record_type", null: false
    t.datetime "updated_at", null: false
    t.index ["record_type", "record_id", "name"], name: "index_action_text_rich_texts_uniqueness", unique: true
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.string "name", null: false
    t.bigint "record_id", null: false
    t.string "record_type", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.string "content_type"
    t.datetime "created_at", null: false
    t.string "filename", null: false
    t.string "key", null: false
    t.text "metadata"
    t.string "service_name", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "authors", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "name"
    t.datetime "updated_at", null: false
  end

  create_table "books", force: :cascade do |t|
    t.bigint "author_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_books_on_author_id"
  end

  create_table "customers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.date "dob"
    t.string "email"
    t.string "name"
    t.string "phn"
    t.datetime "updated_at", null: false
  end

  create_table "offers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.integer "discount"
    t.string "name"
    t.boolean "status"
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer "Count"
    t.string "Details"
    t.datetime "created_at", null: false
    t.bigint "product_id", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_orders_on_product_id"
  end

  create_table "product_categories", force: :cascade do |t|
    t.string "category_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_offers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.bigint "offer_id", null: false
    t.bigint "product_id", null: false
    t.datetime "updated_at", null: false
    t.index ["offer_id"], name: "index_product_offers_on_offer_id"
    t.index ["product_id"], name: "index_product_offers_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.text "description"
    t.string "email"
    t.boolean "is_active"
    t.string "name"
    t.decimal "price"
    t.integer "stock"
    t.datetime "updated_at", null: false
  end

  create_table "products_tags", id: false, force: :cascade do |t|
    t.bigint "product_id", null: false
    t.bigint "tag_id", null: false
  end

  create_table "tags", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.text "desc"
    t.string "name"
    t.datetime "updated_at", null: false
  end

  create_table "test3s", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "name"
    t.datetime "updated_at", null: false
  end

  create_table "test4s", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "name"
    t.bigint "test3_id", default: 1, null: false
    t.datetime "updated_at", null: false
    t.index ["test3_id"], name: "index_test4s_on_test3_id"
  end

  create_table "test_ones", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "name"
    t.datetime "updated_at", null: false
  end

  create_table "test_twos", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "name"
    t.bigint "test_one_id", null: false
    t.datetime "updated_at", null: false
    t.index ["test_one_id"], name: "index_test_twos_on_test_one_id"
  end

  create_table "tests", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "name"
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "email"
    t.string "name"
    t.datetime "updated_at", null: false
  end

  create_table "vendors", force: :cascade do |t|
    t.string "brand_name"
    t.datetime "created_at", null: false
    t.string "location"
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_vendors_on_user_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "books", "authors"
  add_foreign_key "orders", "products"
  add_foreign_key "product_offers", "offers"
  add_foreign_key "product_offers", "products"
  add_foreign_key "test4s", "test3s"
  add_foreign_key "test_twos", "test_ones"
  add_foreign_key "vendors", "users"
end
