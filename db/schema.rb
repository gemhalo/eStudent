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

ActiveRecord::Schema.define(:version => 20110303140359) do

  create_table "academic_and_professional_qualifications", :force => true do |t|
    t.date     "date_issued"
    t.string   "attachment_file_name"
    t.string   "attachment_content_type"
    t.integer  "attachment_file_size"
    t.integer  "applicant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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
    t.boolean  "admision_status"
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
    t.integer  "admission_status_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "colleges", :force => true do |t|
    t.string   "name"
    t.integer  "campus_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "course_exemptions", :force => true do |t|
    t.string   "course_name"
    t.integer  "credit_hour"
    t.integer  "applicant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "department_choices", :force => true do |t|
    t.integer  "department_id"
    t.integer  "applicant_id"
    t.integer  "preference"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "departments", :force => true do |t|
    t.string   "name"
    t.integer  "college_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "educational_backgrounds", :force => true do |t|
    t.string   "institution_type"
    t.string   "institution_name"
    t.string   "region"
    t.string   "zone"
    t.string   "town"
    t.integer  "result"
    t.integer  "out_of"
    t.string   "department"
    t.string   "college_leave_reason"
    t.integer  "applicant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "emergency_contacts", :force => true do |t|
    t.string   "full_name"
    t.string   "relationship"
    t.string   "residence_telephone"
    t.string   "office_telephone"
    t.string   "mobile_telephone"
    t.integer  "applicant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employment_informations", :force => true do |t|
    t.string   "job_type"
    t.string   "employer_name"
    t.string   "employer_telephone"
    t.string   "employer_pobox"
    t.string   "employer_email"
    t.integer  "applicant_id"
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

  create_table "financial_supports", :force => true do |t|
    t.string   "supporter_type"
    t.string   "supporter_name"
    t.string   "supporter_telephone"
    t.string   "supporter_pobox"
    t.string   "email"
    t.string   "attachment_file_name"
    t.string   "attachment_content_type"
    t.integer  "attachment_file_size"
    t.integer  "applicant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "moes", :force => true do |t|
    t.string   "registration_no"
    t.string   "first_name"
    t.string   "father_name"
    t.string   "grand_father_name"
    t.string   "nationality"
    t.string   "sex"
    t.string   "sight"
    t.integer  "age"
    t.string   "school_code"
    t.string   "region"
    t.string   "stream"
    t.integer  "id_no"
    t.string   "placement"
    t.float    "result"
    t.integer  "result_out_of"
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
    t.integer  "nationality"
    t.string   "marital_status"
    t.string   "mother_full_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
  end

  create_table "references", :force => true do |t|
    t.string   "full_name"
    t.string   "office_telephone"
    t.string   "mobile_telephone"
    t.string   "email"
    t.string   "profession"
    t.integer  "applicant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "relevant_publications", :force => true do |t|
    t.string   "description"
    t.date     "published_date"
    t.string   "publication_title"
    t.string   "attachment_file_name"
    t.string   "attachment_content_type"
    t.integer  "attachment_file_size"
    t.integer  "applicant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "research_and_teaching_experiences", :force => true do |t|
    t.string   "description"
    t.integer  "applicant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
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
