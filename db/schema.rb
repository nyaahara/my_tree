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

ActiveRecord::Schema.define(version: 20_170_326_143_111) do
  create_table 'cars', force: :cascade do |t|
    t.string   'url', null: false
    t.string   'make'
    t.string   'model'
    t.string   'variant'
    t.integer  'price'
    t.string   'transmission'
    t.integer  'year'
    t.integer  'kilometres'
    t.boolean  'registered'
    t.date     'registration_expiry'
    t.datetime 'created_at',          null: false
    t.datetime 'updated_at',          null: false
    t.index ['make'], name: 'index_cars_on_make'
    t.index ['model'], name: 'index_cars_on_model'
    t.index ['registered'], name: 'index_cars_on_registered'
    t.index ['registration_expiry'], name: 'index_cars_on_registration_expiry'
    t.index ['transmission'], name: 'index_cars_on_transmission'
    t.index ['variant'], name: 'index_cars_on_variant'
  end
end
