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

ActiveRecord::Schema.define(:version => 20110310185553) do

  create_table "abilities", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "academic_calanders", :force => true do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admission_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admissions", :force => true do |t|
    t.integer  "admission_type_id"
    t.integer  "enrollment_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "applicants", :force => true do |t|
    t.integer  "person_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "verified",                 :default => false
    t.integer  "student_service_staff_id"
    t.integer  "admission_type_id"
  end

  create_table "buildings", :force => true do |t|
    t.string   "building_name"
    t.integer  "campus_id"
    t.integer  "floors"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "campuses", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "colleges", :force => true do |t|
    t.string   "name"
    t.integer  "campus_id"
    t.integer  "college_telephone"
    t.string   "college_pobox"
    t.string   "college_email"
    t.integer  "instructor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "course_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courses", :force => true do |t|
    t.string   "course_title"
    t.string   "course_code"
    t.integer  "credit_hour"
    t.string   "description"
    t.integer  "department_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "curriculums", :force => true do |t|
    t.integer  "course_id"
    t.integer  "program_id"
    t.integer  "course_type"
    t.integer  "semester_id"
    t.integer  "class_year_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "department_quotas", :force => true do |t|
    t.integer  "department_id"
    t.integer  "total_quota"
    t.integer  "female_percentage"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "departments", :force => true do |t|
    t.string   "name"
    t.integer  "college_id"
    t.string   "dept_head"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dormitories", :force => true do |t|
    t.integer  "student_id"
    t.integer  "room_id"
    t.string   "bed_number"
    t.date     "academic_year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "educational_backgrounds", :force => true do |t|
    t.string   "EHEECE_code"
    t.integer  "school_code"
    t.integer  "EHEECE_result"
    t.integer  "EHEECE_maximum_result"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "student_id"
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

  create_table "events", :force => true do |t|
    t.integer  "academic_calander_id"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "title"
    t.string   "detail"
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

  create_table "how_tos", :force => true do |t|
    t.string   "title"
    t.string   "detail"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "instructors", :force => true do |t|
    t.string   "id_number"
    t.string   "academic_rank"
    t.string   "specialization"
    t.integer  "role_id"
    t.integer  "department_id"
    t.integer  "person_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nationalities", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "netzke_component_states", :force => true do |t|
    t.string   "component"
    t.integer  "user_id"
    t.integer  "role_id"
    t.text     "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "netzke_component_states", ["component"], :name => "index_netzke_component_states_on_component"
  add_index "netzke_component_states", ["role_id"], :name => "index_netzke_component_states_on_role_id"
  add_index "netzke_component_states", ["user_id"], :name => "index_netzke_component_states_on_user_id"

  create_table "people", :force => true do |t|
    t.string   "name"
    t.string   "father_name"
    t.string   "grand_father_name"
    t.string   "gender"
    t.datetime "date_of_birth"
    t.string   "place_of_birth"
    t.integer  "ethnicity"
    t.integer  "nationality_id"
    t.string   "marital_status"
    t.string   "mother_full_name"
    t.string   "photo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "disability"
    t.string   "type_of_disability"
    t.integer  "region_code"
  end

  create_table "programs", :force => true do |t|
    t.string   "name"
    t.integer  "department_id"
    t.integer  "admission_id"
    t.date     "duration"
    t.integer  "total_credit_hour"
    t.integer  "award_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rooms", :force => true do |t|
    t.string   "room_number"
    t.integer  "building_id"
    t.integer  "floor_number"
    t.integer  "holding_capacity"
    t.string   "used_for"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "student_service_staffs", :force => true do |t|
    t.string   "id_number"
    t.string   "rank"
    t.integer  "qualification_type_id"
    t.integer  "role_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "person_id"
  end

  create_table "students", :force => true do |t|
    t.string   "id_number"
    t.integer  "department_id"
    t.integer  "enrollment_type_id"
    t.integer  "admission_type_id"
    t.integer  "program_id"
    t.integer  "person_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "college_name"
    t.integer  "enrollment_mode_id"
    t.integer  "admission_id"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.integer  "login_count",        :default => 0, :null => false
    t.integer  "failed_login_count", :default => 0, :null => false
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip"
    t.string   "last_login_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "role"
    t.integer  "person_id"
  end

end
