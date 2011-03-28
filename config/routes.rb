EStudent::Application.routes.draw do
  match '/calendar(/:year(/:month))' => 'calendar#index', :as => :calendar, :constraints => {:year => /\d{4}/, :month => /\d{1,2}/}


  get "event_viewer/index"

  get "event_viewer/show"
  resources :event_viewer
  resources :academic_caledars

  get  'student_service_staffs/selector'
  post 'student_service_staffs/selector'
  resources :award_types

  resources :admission_status_types

  resources :enrollment_mode_types

  resources :enrollment_types

  get "moe_data_import/import"

  post "moe_data_import/import"
  get "moe_data_import/upload"
  post "moe_data_import/upload"
  get "moe_data_import/show"
  post "moe_data_import/create_account"
  get "moe_data_import/create_account"
  
  
  resources :moe_data_import

  resources :admissions

  resources :agreements
  resources :how_tos
  post "how_tos/showpage"

  resources :educational_backgrounds

  resources :academic_and_professional_qualifications

  resources :research_and_teaching_experiences

  resources :relevant_publications

  resources :references

  resources :financial_supports

  resources :course_exemptions

  resources :employment_informations
  resources :events

  resources :departments

  resources :department_choices
  resources :campuses

  resources :emergency_contacts
  resources :academic_calanders

  resources :dormitories

  resources :rooms

  resources :buildings

  resources :department_quotas

  resources :departments

  resources :campuses

  resources :academic_calendars

  netzke
  root :to => "welcome#index"
  root :to => "users#index"
  resources :family_backgrounds
  resources :colleges
  resources :admission_types
  resources :enrollement_types
  resources :nationalities
  resources :ethnicities
  resources :people
  resources :programs

  get "admission_approval/index"
  get "admission_approval/show_list"
  get "admission_approval/details"
  get "admission_approval/approve"
  get "admission_approval/decline"

 
  resources :buildings
  get "dormitory_placement/place_dorm"
  get "dormitory_placement/show_placement"
  post "dormitory_placement/dorm_placing_process"
  get "dormitory_placement/edit"
  post "dormitory_placement/update"
  get "dormitory_placement/destroy"
   resources :available_programs
  get "available_programs/index"
 post "available_programs/show"
get "available_programs/show"

  get "department_placement/department_placing_process"
  get "department_placement/show_placement"
    
  resources :users, :user_sessions
  match 'login' => 'user_sessions#new', :as => :login
  match 'logout' => 'user_sessions#destroy', :as => :logout


  resources :instructors

  resources :colleges

  resources :admission_types

  resources :enrollement_types

  resources :nationalities

  resources :ethnicities
  #post 'student_service_staffs/index'
  
  
  #post 'student_service_staffs/show'
  #get  'student_service_staffs/sample'
  get  'applicants/edit'
  
  get  'student_service_staffs/selector' 
  post 'student_service_staffs/selector'
  
  resources :student_service_staffs
  
  
  #resources :studentservicestaffs
  

  resources :people
  resources :applicants

  netzke
  
  get "department_head/index"
  get "department_head/show_list"
  get "department_head/details"
  get "department_head/approve"
  resources :applicants 
  get "moes/import"
  post "moes/import"
  get "sessions/create"

  get "sessions/destroy"

  resources :users do
    collection do
      post 'forgot_password'
      get 'forgot_password'
           
    end
  end

  netzke
  root :to => "user_sessions#new"
  #root :to => "users#index"
  #root :to => "welcome#index"

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


  resources :academic_and_professional_qualifications
  resources :academic_calanders
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
  resources :admin

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
