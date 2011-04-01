EStudent::Application.routes.draw do
  #get "main_app/index"
  netzke
  root :to => "user_sessions#new"
  #root :to => "main_app#index"
  get "campuses/index"
  get "college/sam"
  get "admin/index"

  match 'components/:component' => 'components#index', :as => "components"

  match 'login' => 'user_sessions#new', :as => :login
  match 'logout' => 'user_sessions#destroy', :as => :logout

  get "admission_approval/approve"

  get "admission_approval/decline"

  get "admission_approval/details"

  get "admission_approval/index"

  get "admission_approval/show_list"

  get  'applicants/edit'
  get "available_programs/index"

  get "available_programs/show"
  post "available_programs/show"

  get "department_head/approve"

  get "department_head/details"

  get "department_head/index"

  get "department_head/show_list"

  get "department_placement/department_placing_process"
  post "dormitory_placement/dorm_placing_process"

  get "dormitory_placement/dorm_placing_process"

  post "dormitory_placement/dorm_placing_process"

  get "department_placement/show_placement"

  get "dormitory_placement/destroy"

  get "dormitory_placement/edit"

  get "dormitory_placement/place_dorm"

  get "dormitory_placement/show_placement"
  post "dormitory_placement/update"

  get 'financial_supports/new'
  post 'financial_supports/new'

  get "moe_data_import/create_account"
  post "moe_data_import/create_account"

  get "moe_data_import/import"
  post "moe_data_import/import"

  get "moe_data_import/show"

  get "moe_data_import/upload"
  post "moe_data_import/upload"

  get  'student_service_staffs/selected'
  post 'student_service_staffs/selected'

  get  'student_service_staffs/selector'
  post 'student_service_staffs/selector'

  get "users/forgot_password"
  post "users/forgot_password"

  get  'users/manageusers'
  post 'users/manageusers'

  resources :users do
    collection do
      get 'forgot_password'
      post 'forgot_password'
    end
  end


  resources :academic_and_professional_qualifications
  resources :academic_calanders
  resources :admin
  resources :admissions
  resources :admission_status_types
  resources :admission_types
  resources :agreements
  resources :applicants
  resources :available_programs
  resources :award_types
  resources :buildings
  resources :campuses
  resources :colleges
#  resources :components
  resources :course_exemptions
  resources :department_choices
  resources :department_quotas
  resources :departments
  resources :dormitories
  resources :educational_backgrounds
  resources :emergency_contacts
  resources :employment_informations
  resources :enrollment_mode_types
  resources :enrollment_types
  resources :ethnicities
  resources :events
  resources :family_backgrounds
  resources :financial_supports
  resources :how_tos
  resources :instructors
  resources :menuitems
  resources :moe_data_import
  resources :nationalities
  resources :programs
  resources :references
  resources :relevant_publications
  resources :research_and_teaching_experiences
  resources :rooms
  resources :student_service_staffs
  resources :user_sessions

end

