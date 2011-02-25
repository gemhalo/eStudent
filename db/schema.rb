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

ActiveRecord::Schema.define(:version => 20110224170038) do

  create_table "admission_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admissions", :force => true do |t|
    t.integer  "applicant_id"
    t.integer  "enrollement_type_id"
    t.integer  "admission_type_id"
    t.string   "entry_level"
    t.integer  "admision_status"
    t.integer  "college"
    t.integer  "accadamic_calender_id"
    t.string   "major_feild_of_study"
    t.string   "minor_feild_of_study"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "admission_date"
  end

  create_table "applicants", :force => true do |t|
    t.integer  "person_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "verified",          :default => false
    t.integer  "admission_type_id"
  end

  create_table "colleges", :force => true do |t|
    t.string   "name"
    t.integer  "campus_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "enrollement_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ethnicities", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "family_backgrounds", :force => true do |t|
    t.string   "father_edu_level"
    t.string   "mother_edu_level"
    t.string   "father_occupation"
    t.string   "mother_occupation"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "applicant_id"
  end

  create_table "nationalities", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", :force => true do |t|
    t.string   "name"
    t.string   "father_name"
    t.string   "grand_father_name"
    t.string   "gender"
    t.datetime "date_of_birth"
    t.string   "place_of_birth"
    t.integer  "ethnicity"
    t.integer  "nationality"
    t.string   "marital_status"
    t.string   "mother_full_name"
    t.string   "photo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "users", :force => true do |t|
    t.string   "user_name"
    t.string   "hashed_password"
    t.string   "salt"
    t.string   "email"
    t.date     "last_login"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
