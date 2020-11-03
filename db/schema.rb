# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_11_03_111855) do

  create_table "cards", force: :cascade do |t|
    t.string "card_id"
    t.string "card_title"
    t.string "house"
    t.string "card_type"
    t.string "front_image"
    t.string "card_text"
    t.string "traits"
    t.integer "amber"
    t.integer "power"
    t.integer "armor"
    t.string "rarity"
    t.string "flavor_text"
    t.integer "card_number"
    t.integer "expansion"
    t.boolean "is_maverick"
    t.boolean "is_anomaly"
    t.boolean "is_enhanced"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
