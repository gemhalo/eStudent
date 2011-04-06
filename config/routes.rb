EStudent::Application.routes.draw do
  resources :assign_instructors

  resources :offered_courses

  resources :curriculum_courses

  get "adddrops/add"

  get "adddrops/drop"

  get "adddrops/approve"

  get "adddrops/notification"

  root :to => "welcome#index"
  resources :borrowed_items
   resources :service_types

  resources :clearance_requests

  resources :curriculums
  resources :service_types
  resources :programs
  resources :service_agreements

  match '/calendar(/:year(/:month))' => 'calendar#index', :as => :calendar, :constraints => {:year => /\d{4}/, :month => /\d{1,2}/}

resources :academic_calendars
  resources :course_assignments

netzke
  get "admin/index"
  resources :class_years

  resources :semesters
   resources :service_types
  resources :academic_year_semesters

  resources :academic_years
  resources :service_types

  get "users_admin/index"


#  get "loose_components/index"
  #netzke
 # root :to => "demo#index"
 # match 'components/:component' => 'components#index', :as => "components"
 # match ':controller(/:action(/:id(.:format)))'

  resources :menuitems
  #get "main_app/index"
  netzke
  #root :to => "user_sessions#new"
  #root :to => "main_app#index"
  get "campuses/index"
  get "college/sam"
  get "admin/index"
  #get "demo/index"
  #post "demo/index"

  match 'components/:component' => 'components#index', :as => "components"

  match 'login' => 'user_sessions#new', :as => :login
  match 'logout' => 'user_sessions#destroy', :as => :logout

  get "calendar/new"

  get "event_viewer/index"

  get "event_viewer/show"


  get "admission_approval/approve"

  get "admission_approval/decline"

  get "admission_approval/details"

  get "admission_approval/index"

  get "admission_approval/show_list"

  get  'applicants/edit'
  get "available_programs/index"

  get "available_programs/show"
  post "available_programs/show"

  
  get "dormitory_placement/select_group"
  post "dormitory_placement/select_group"
  post "dormitory_placement/group_dorm_placement"
  get "dormitory_placement/group_dorm_placement_form"
  get "dormitory_placement/individual_dorm_placement_form"
  post "dormitory_placement/individual_dorm_placement_form"
  post "dormitory_placement/individual_dorm_placement"
  get "department_placement/department_placing_process"

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

  get "moes/import"
  post "moes/import"

  get  'student_service_staffs/selected'
  post 'student_service_staffs/selected'

  get  'student_service_staffs/selector'
  post 'student_service_staffs/selector'

  get "users/forgot_password"
  post "users/forgot_password"
  #get "users/edit"
  get  'users/manageusers'
  post 'users/manageusers'
  get 'available_programs/index_pdf'
  post 'available_programs/index_pdf'
  resources :user_sessions
  resources :users do
    collection do
      get 'forgot_password'
      post 'forgot_password'
    end
  end


  resources :courses
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
 resources :calendar
  resources :campuses
  resources :courses
  resources :curriculums


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
  #resources :enrollement_types
  resources :enrollment_mode_types
  resources :enrollment_types
  #Remove this later

  #resource :session
  resources :ethnicities
  resources :events
  resources :family_backgrounds
  resources :financial_supports
  resources :how_tos
  resources :instructors
  resources :menuitems
  resources :moe_data_import
  resources :nationalities
  #resources :people
  resources :programs
  resources :references
  resources :relevant_publications
  resources :research_and_teaching_experiences
  resources :rooms
  #resources :sessions
  resources :student_service_staffs
  resources :user_sessions

  resources :admin
  resources :components
  resources :service_types
  resources :menuitems
 # netzke
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
