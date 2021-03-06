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

ActiveRecord::Schema.define(:version => 20110405114619) do

  create_table "abilities", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "academic_and_professional_qualifications", :force => true do |t|
    t.date     "date_issued"
    t.string   "attachment_file_name"
    t.string   "attachment_content_type"
    t.integer  "attachment_file_size"
    t.integer  "applicant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "academic_calanders", :force => true do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "academic_calendars", :force => true do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "academic_year_semesters", :force => true do |t|
    t.integer  "academic_year_id"
    t.integer  "semester_id"
    t.date     "start_at"
    t.date     "end_at"
    t.boolean  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "academic_years", :force => true do |t|
    t.date     "start_at"
    t.date     "end_at"
    t.boolean  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "year"
  end

  create_table "add_drops", :force => true do |t|
    t.integer  "registration_id"
    t.integer  "offered_course_id"
    t.string   "request_for"
    t.boolean  "add_drop_status"
    t.date     "add_drop_date"
    t.integer  "approved_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admins", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admission_status_types", :force => true do |t|
    t.string   "name"
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

  create_table "agreements", :force => true do |t|
    t.boolean  "agreement"
    t.integer  "applicant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "applicants", :force => true do |t|
    t.integer  "person_id"
    t.integer  "admission_id"
    t.integer  "college_id"
    t.string   "entry_level"
    t.string   "major_field_of_study"
    t.string   "minor_field_of_study"
    t.string   "academic_year"
    t.boolean  "admission_status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "verified"
    t.integer  "enrollment_mode_type_id"
  end

  create_table "assign_instructors", :force => true do |t|
    t.integer  "offered_course_id"
    t.integer  "instructor_id"
    t.string   "section"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "award_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "borrowed_items", :force => true do |t|
    t.string   "id_number"
    t.string   "employee_id_number"
    t.string   "item_name"
    t.string   "item_type"
    t.string   "borrowed_from"
    t.boolean  "cleared"
    t.date     "borrowed_date"
    t.date     "return_date"
    t.datetime "created_at"
    t.datetime "updated_at"
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

  create_table "class_years", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clearance_requests", :force => true do |t|
    t.integer  "student_id"
    t.string   "reason_for"
    t.string   "reason_for_withdrawal"
    t.date     "clearance_date"
    t.boolean  "approval"
    t.string   "attachment"
    t.string   "attachment_file_name"
    t.string   "attachment_content_type"
    t.integer  "attachment_file_size"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "colleges", :force => true do |t|
    t.string   "name"
    t.integer  "campus_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "instructor_id"
  end

  create_table "course_assignments", :force => true do |t|
    t.integer  "offered_course_id"
    t.integer  "instructor_id"
    t.string   "section"
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

  create_table "curriculum_courses", :force => true do |t|
    t.integer  "curriculum_id"
    t.integer  "course_id"
    t.string   "course_type"
    t.float    "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "curriculums", :force => true do |t|
    t.integer  "program_id"
    t.integer  "class_year_id"
    t.integer  "semester_id"
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
    t.integer  "academic_calendar_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "educational_backgrounds", :force => true do |t|
    t.string   "institution_type"
    t.string   "institution_name"
    t.string   "result_type"
    t.string   "eheece_code"
    t.string   "school_code"
    t.string   "institution_region"
    t.string   "institution_zone"
    t.string   "institution_town"
    t.integer  "result"
    t.integer  "out_of"
    t.string   "department"
    t.string   "college_leave_reason"
    t.integer  "applicant_id"
    t.string   "attachment_file_name"
    t.string   "attachment_content_type"
    t.integer  "attachment_file_size"
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

  create_table "enrollment_mode_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "enrollment_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "enrollments", :force => true do |t|
    t.integer  "registration_id"
    t.integer  "offered_course_id"
    t.string   "add_drop_status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ethnicities", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", :force => true do |t|
    t.string   "name"
    t.datetime "start_at"
    t.datetime "end_at"
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

  create_table "how_tos", :force => true do |t|
    t.string   "title"
    t.text     "detail"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "instructors", :force => true do |t|
    t.string   "employee_id"
    t.string   "academic_rank"
    t.string   "specialization"
    t.integer  "role_id"
    t.integer  "department_id"
    t.integer  "person_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "menuitems", :force => true do |t|
    t.string   "linktitle"
    t.string   "linkcontroller"
    t.string   "linkaction"
    t.string   "linkicon"
    t.string   "role_id"
    t.string   "catagory"
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

  create_table "offered_courses", :force => true do |t|
    t.integer  "curriculum_course_id"
    t.integer  "academic_year_semester_id"
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
    t.integer  "nationality_id"
    t.string   "marital_status"
    t.string   "mother_full_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "disability"
    t.string   "type_of_disability"
    t.integer  "region_code"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
  end

  create_table "programs", :force => true do |t|
    t.string   "name"
    t.integer  "department_id"
    t.integer  "admission_id"
    t.integer  "duration"
    t.integer  "total_credit_hour"
    t.integer  "award_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
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

  create_table "registrations", :force => true do |t|
    t.integer  "student_id"
    t.integer  "class_year_id"
    t.integer  "academic_year_semester_id"
    t.date     "registration_date"
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

  create_table "rooms", :force => true do |t|
    t.string   "room_number"
    t.integer  "building_id"
    t.integer  "floor_number"
    t.integer  "holding_capacity"
    t.string   "used_for"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "semesters", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "service_agreements", :force => true do |t|
    t.integer  "student_id"
    t.integer  "service_type_id"
    t.integer  "class_year_id"
    t.integer  "academic_year_semester_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "service_types", :force => true do |t|
    t.string   "service_name"
    t.string   "service_type"
    t.float    "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

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
    t.integer  "applicant_id"
    t.integer  "department_id"
    t.integer  "program_id"
    t.datetime "created_at"
    t.datetime "updated_at"
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
    t.string   "temp_password"
  end

end
