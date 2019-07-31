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

ActiveRecord::Schema.define(version: 2019_07_31_003325) do

  create_table "favorites", force: :cascade do |t|
    t.string "saved_tree"
  end

  create_table "trees", force: :cascade do |t|
    t.integer "user_id"
    t.integer "favorite_id"
    t.string "common_name"
    t.string "common_fam_name"
    t.string "coniferous_deciduous"
    t.string "sci_name"
    t.string "bark_color"
    t.string "bark_texture"
    t.string "leaf_type"
    t.string "leaf_arrangement"
    t.string "leaf_shape"
    t.string "needle_shape"
    t.string "cone_type"
    t.string "fruit"
    t.integer "min_elevation"
    t.integer "max_elevation"
    t.integer "min_height"
    t.integer "max_height"
    t.string "twig_texture"
    t.string "flower_shape"
    t.string "flower_color"
    t.string "habitat"
    t.index ["favorite_id"], name: "index_trees_on_favorite_id"
    t.index ["user_id"], name: "index_trees_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "user_name"
  end

end
