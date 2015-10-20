ActiveRecord::Schema.define(version: 20151020120524) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "restaurants", force: :cascade do |t|
    t.string   "name"
    t.integer  "rating"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.text     "description"
  end

  create_table "reviews", force: :cascade do |t|
    t.text     "thoughts"
    t.integer  "rating"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "restaurant_id"
  end

  add_index "reviews", ["restaurant_id"], name: "index_reviews_on_restaurant_id", using: :btree

  add_foreign_key "reviews", "restaurants"
end
