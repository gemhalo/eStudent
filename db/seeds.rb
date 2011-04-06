# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

#Cleanup
Campus.delete_all
College.delete_all
Department.delete_all
AdmissionType.delete_all
EnrollmentType.delete_all
EnrollmentModeType.delete_all
Admission.delete_all
User.delete_all
Building.delete_all
Room.delete_all
Menuitem.delete_all
ClassYear.delete_all
Semester.delete_all
AcademicYear.delete_all
AcademicYearSemester.delete_all
Program.delete_all
Person.delete_all
Instructor.delete_all
Course.delete_all
HowTo.delete_all
#Campuses
campuses = ["Adi-Haqi","Arid (Endayesus)", "Ayder"]

campuses.each do |campus|
  Campus.create!( { :name => campus } )
end

admission_types = ["Undergraduate", "Postgraduate"]
enrollment_types = ["Regular", "Extension","Summer","Distance"]

admission_types.each do |admission_type|
   AdmissionType.create!({:name => admission_type})
end

enrollment_types.each do | enrollment_type |
   EnrollmentType.create!({:name => enrollment_type})
end

#Create admissions

admission_types.each do | admission_type1 | # {Undergraduate, Postgraduate} x

  enrollment_types.each do | enrollment_type1 | # { Regular, Extension, Summer, Distance}

    Admission.create!({ :admission_type_id => AdmissionType.find_by_name(admission_type1).id,
                        :enrollment_type_id => EnrollmentType.find_by_name(enrollment_type1).id
                      })
  end

end
#person
 persons = [
   {:name => "samuel", :father_name => "hadgu", :grand_father_name => "kiros"},
   {:name => "yared", :father_name => "getachew", :grand_father_name => "kiros"},
   {:name => "ferede", :father_name => "zeray", :grand_father_name => "tefera"},
   {:name => "habtom", :father_name => "kahsay", :grand_father_name => "gidey"}

 ]
 persons.each do |person|
   Person.create!({:name => person[:name], :father_name => person[:father_name], :grand_father_name => person[:grand_father_name]})
 end

#course
 courses = [
 {:course_title => "intoduction to programming", :course_code => "comp101", :credit_hour => "4", :description => "major", :department => "computing"},
 {:course_title => "object oriented programming", :course_code => "comp102", :credit_hour => "3", :description => "major", :department => "computing"},
 {:course_title => "Java", :course_code => "comp302", :credit_hour => "4", :description => "minor", :department => "computing"},
 {:course_title => "web design", :course_code => "comp202", :credit_hour => "4", :description => "minorr", :department => "computing"}

 ]
 courses.each do |course|
   Course.create!({:course_title => course[:course_title], :course_code => course[:course_code], :credit_hour => course[:credit_hour],
                 :department_id => Department.find_by_name([:department]), :description => course[:description]})
end


#Create users
users = [
  { :username => "gere" , :password => "gere",    :role => "student",
    :email => "student@campus.com" },
  { :username => "samy" , :password => "samy",    :role => "instructor",
    :email => "instructor@campus.com"},
  { :username => "yemane",:password => "yemane",  :role => "student_service_staff",
    :email => "sss@campus.com"},
  { :username => "admin",:password => "admin",    :role => "admin",
    :email => "admin@campus.com"},
  { :username => "samy" , :password => "samy",    :role => "instructor",
    :email => "instructor@campus.com"},
  { :username => "yared" , :password => "yared",    :role => "instructor",
    :email => "yaredv@campus.com"},
  { :username => "ferid" , :password => "ferid",    :role => "instructor",
    :email => "ferid@campus.com"},
  { :username => "habtom" , :password => "habtom",    :role => "instructor",
    :email => "habtom@campus.com"}
  
]

users.each do |user|
  User.create!({:username => user[:username],:password => user[:password],
                :password_confirmation => user[:password], :role => user[:role],
                :email => user[:email] } )
end
#instructors
 instructors = [
    {:employee_id => "MU001", :academic_rank => "Masters in computer science", :department_id => "Computing",
     :name => "samuel", :father_name => "hadgu", :grand_father_name => "kiros"},
    {:employee_id => "MU002", :academic_rank => "Degree in computer science", :department_id => "Computing",
     :name => "yared", :father_name => "getachew", :grand_father_name => "kiros"},
    {:employee_id => "MU003", :academic_rank => "Masters in computer science", :department_id => "Computing",
     :name => "ferede", :father_name => "zeray", :grand_father_name => "tefera"},
    {:employee_id => "MU004", :academic_rank => "Degree in computer science", :department_id => "Computing",
     :name => "habtom", :father_name => "kahsay", :grand_father_name => "gidey"}
 ]
 instructors.each do |instructor|
    Instructor.create!({ :employee_id => instructor[:employee_id],
                         :academic_rank => instructor[:academic_rank],
                         :department_id => Department.find_by_name(instructor[:department_id]),
                         :person_id => Person.where("name = ? and father_name = ?",
                           instructor[:name],instructor[:father_name])})
  end

 

#College
colleges = [
  { :name => "Natural and Computational Science(CNCS)", :campus => "Arid (Endayesus)" } ,
  { :name => "Engineering(CE)" , :campus => "Arid (Endayesus)" } ,
  { :name => "Social Sciences & Languages(CSSL)", :campus => "Arid (Endayesus)"} ,
  { :name => "Ethiopian Institute of Technology(CEIT)", :campus => "Arid (Endayesus)" } ,
  { :name => "Business and Economics(CBE)" , :campus => "Adi-Haqi" } ,
  { :name => "Law(CL)" , :campus => "Adi-Haqi" },
  { :name => "Medicine(CM)" , :campus => "Ayder" },
  { :name => "Agriculture(CA)" , :campus => "Arid (Endayesus)" }

]

colleges.each do | college |
  College.create!({ :name => college[:name], :campus_id => (Campus.find_by_name(college[:campus])).id
#          :instructor_id => 0
  })
end

#buildings
 buildings = [
   {:building_name => "block-1",  :floors => 2,  :campus => "Arid (Endayesus)" } ,
   {:building_name => "block-2",  :floors => 2,  :campus => "Arid (Endayesus)" },
   {:building_name => "block-3",  :floors => 2,  :campus => "Ayder" }
]

buildings.each do | b |
  Building.create!({ :building_name => b[:building_name], :floors => b[:floors], :campus_id => Campus.find_by_name(b[:campus])
#          :instructor_id => 0
  })
end


#buildings
 how_tos = [
   {:title => "Undergraduate Application",  :detail =>"All undergraduate students must get a welcome letter which contains login account and application instructions upon arraival" } ,
  {:title => "Postgraduate Application",  :detail =>"All postgraduate students must create an account and apply online up on login"},
  {:title => "Extension Application",  :detail =>"All extension students must create an account and apply online up on login" } 
]

how_tos.each do | h |
 HowTo.create!({ :title => h[:title], :detail => h[:detail]
  })
end

#rooms
rooms = [
  
 {:room_number => "101", :building => "block-1", :floor_number => 1, :holding_capacity => 10, :used_for => "dormitory" },
 {:room_number => "102", :building => "block-1", :floor_number => 2, :holding_capacity => 10, :used_for => "dormitory" },
 {:room_number => "103", :building => "block-2", :floor_number => 1, :holding_capacity => 10, :used_for => "dormitory" },
 {:room_number => "104", :building => "block-3", :floor_number => 2, :holding_capacity => 10, :used_for => "dormitory" }
]

rooms.each do | r |
  Room.create!({ :room_number => r[:room_number],
                 :floor_number => r[:floor_number],
                 :holding_capacity => r[:holding_capacity],
                 :used_for => r[:used_for], 
                 :building_id => Building.find_by_building_name(r[:building])})
#          :instructor_id => 0
  
end


#enrollment mode types
enrollment_mode_types = [
  {:name => "Part Time"},
  {:name => "Full Time"},
]
enrollment_mode_types.each do |enrollment_mode_type|
  EnrollmentModeType.create!({:name => enrollment_mode_type})
end

#Department
departments = [
  { :name => "Biology", :college => "Natural and Computational Science(CNCS)"},
  { :name => "Chemistry", :college => "Natural and Computational Science(CNCS)"},
  { :name => "Earth Sciencees", :college => "Natural and Computational Science(CNCS)" },
  { :name => "Physics", :college => "Natural and Computational Science(CNCS)" },
  { :name => "Architecture and Urban Planning", :college => "Natural and Computational Science(CNCS)" },
  { :name => "Civil Engineering", :college => "Natural and Computational Science" },
  { :name => "Computing", :college => "Natural and Computational Science(CNCS)" },
  { :name => "Mechanical Engineering", :college => "Natural and Computational Science(CNCS)" },
  { :name => "Geography and Environmental Sciences", :college => "Natural and Computational Science(CNCS)" },
  { :name => "Electrical and Computer Engineering", :college => "Natural and Computational Science(CNCS)" },
  { :name => "Industrial Engineering", :college => "Natural and Computational Science(CNCS)" }
]
departments.each do |department|
  Department.create!({ :name => department[:name],
                     :college_id => College.find_by_name(department[:college]),
                     :dept_head => "-" } )
end

# Programs

programs = [
  {:name => "Biology", :department_id => "Biology", :admission_type => "undergraduate", 
    :enrollment_type => "regular" , :duration => "3", :total_credit_hour => "154",
    :award_type => "Degree - Bed"},
  {:name => "Applied Chemistry", :department_id => "Chemistry", :admission_type => "undergraduate",
    :enrollment_type => "regular" , :duration => "4", :total_credit_hour => "164",
    :award_type => "Degree - Bed"},
  {:name => "Earth Sciencees", :department_id => "Earth Sciencees", :admission_type => "Postgraduate",
    :enrollment_type => "regular" , :duration => "3", :total_credit_hour => "124",
    :award_type => "Degree - Bed"},
  {:name => "Physics", :department_id => "Physics", :admission_type => "undergraduate",
    :enrollment_type => "regular" , :duration => "3", :total_credit_hour => "136",
    :award_type => "Degree - Bed"},
  {:name => "Architecture and Urban Planning", :department_id => "Architecture and Urban Planning", :admission_type => "undergraduate",
      :enrollment_type => "regular" , :duration => "3", :total_credit_hour => "164",
      :award_type => "Degree - Bed"},
  {:name => "Civil Engineering", :department_id => "Biology", :admission_type => "undergraduate",
      :enrollment_type => "regular" , :duration => "3", :total_credit_hour => "154",
      :award_type => "Degree - Bed"},
  {:name => "Computing", :department_id => "Computing", :admission_type => "Postgraduate",
      :enrollment_type => "regular" , :duration => "3", :total_credit_hour => "144",
      :award_type => "Degree - Bed"},

]

programs.each do |prog|
  Program.create!({:name => prog[:name],
      :department_id => Department.find_by_name(prog[:department_id]),
      :admission_id => Admission.where("admission_type_id = ? and enrollment_type_id = ?",prog[:admission_type],prog[:enrollment_type]),
      :duration => prog[:duration], :total_credit_hour => prog[:total_credit_hour]
      #:award_type => prog[:award_type]
    })
end
#Create menuitems
menuitems = [

# Student Service Staff
 { :linktitle => "Import Data" , :linkcontroller => "moe_data_import",    :linkaction => "import",
    :linkicon => "/icons/database_add.png", :role_id=>"student_service_staff", :catagory=>"academics" },

 { :linktitle => "Screen Applicants" , :linkcontroller => "student_service_staffs",    :linkaction => "selected",
    :linkicon => "/icons/application_view_detail.png", :role_id=>"student_service_staff", :catagory=>"academics" },

{ :linktitle => "Place Dorm" , :linkcontroller => "dormitory_placement",    :linkaction => "place_dorm",
    :linkicon => "/icons/house.png", :role_id=>"student_service_staff", :catagory=>"academics" },

#instructors menu items

 { :linktitle => "Approve Applicant" , :linkcontroller => "admission_approval",    :linkaction => "index",
    :linkicon => "/icons/application_go.png", :role_id=>"instructor", :catagory=>"academics" },

 { :linktitle => "Department Placement" , :linkcontroller => "department_quotas",    :linkaction => "index",
    :linkicon => "/icons/group_go.png", :role_id=>"instructor", :catagory=>"academics" },

 { :linktitle => "Curriculum" , :linkcontroller => "curriculums",    :linkaction => "index",
    :linkicon => "/icons/group_go.png", :role_id=>"instructor", :catagory=>"academics" },
 
 { :linktitle => "Add Course" , :linkcontroller => "courses",    :linkaction => "index",
    :linkicon => "/icons/group_go.png", :role_id=>"instructor", :catagory=>"academics" },

 { :linktitle => "Add Offered Courses" , :linkcontroller => "offered_courses",    :linkaction => "index",
    :linkicon => "/icons/group_go.png", :role_id=>"instructor", :catagory=>"academics" },

 { :linktitle => "Allocate Courses " , :linkcontroller => "course_assignments",    :linkaction => "index",
    :linkicon => "/icons/group_go.png", :role_id=>"instructor", :catagory=>"academics" },
  { :linktitle => "Design curriculum " , :linkcontroller => "curriculum_courses",    :linkaction => "index",
    :linkicon => "/icons/group_go.png", :role_id=>"instructor", :catagory=>"academics" },
  { :linktitle => "Course offer " , :linkcontroller => "offered_courses",    :linkaction => "index",
    :linkicon => "/icons/group_go.png", :role_id=>"instructor", :catagory=>"academics" },

{ :linktitle => "Assign instructor " , :linkcontroller => "assign_instructors",    :linkaction => "index",
    :linkicon => "/icons/group_go.png", :role_id=>"instructor", :catagory=>"academics" },

  #students menu items
 { :linktitle => "Apply Online" , :linkcontroller => "applicants",    :linkaction => "new",
    :linkicon => "/icons/database_add.png", :role_id=>"student", :catagory=>"academics" },

 { :linktitle => "Register" , :linkcontroller => "service_agreements",    :linkaction => "new",
    :linkicon => "/icons/database_add.png", :role_id=>"student", :catagory=>"academics" },

#admin menu items


{ :linktitle => "Campuses" , :linkcontroller => "campuses",    :linkaction => "index",
    :linkicon => "/icons/brick_add.png", :role_id=>"admin", :catagory=>"academics" },

{ :linktitle => "Colleges" , :linkcontroller => "colleges",    :linkaction => "index",
    :linkicon => "/icons/door.png", :role_id=>"admin", :catagory=>"academics" },

{ :linktitle => "Departments" , :linkcontroller => "departments",    :linkaction => "index",
    :linkicon => "/icons/coins_add.png", :role_id=>"admin", :catagory=>"academics" },

{ :linktitle => "Program" , :linkcontroller => "programs",    :linkaction => "index",
    :linkicon => "/icons/calendar_add.png", :role_id=>"admin", :catagory=>"academics" },

{ :linktitle => "Admission Types" , :linkcontroller => "admission_types",    :linkaction => "index",
    :linkicon => "/icons/font_go.png", :role_id=>"admin", :catagory=>"academics" },

{ :linktitle => "Academic Year" , :linkcontroller => "academic_years",    :linkaction => "index",
    :linkicon => "/icons/calendar_add.png", :role_id=>"admin", :catagory=>"academics" },

{ :linktitle => "Academic Year Semester" , :linkcontroller => "academic_year_semesters",    :linkaction => "index",
    :linkicon => "/icons/calendar_add.png", :role_id=>"admin", :catagory=>"academics" },

{ :linktitle => "Class Year" , :linkcontroller => "class_years",    :linkaction => "index",
    :linkicon => "/icons/calendar_add.png", :role_id=>"admin", :catagory=>"academics" },

{ :linktitle => "Semester" , :linkcontroller => "semesters",    :linkaction => "index",
    :linkicon => "/icons/calendar_add.png", :role_id=>"admin", :catagory=>"academics" },

{ :linktitle => "Service Types" , :linkcontroller => "service_types",    :linkaction => "index",
    :linkicon => "/icons/calendar_add.png", :role_id=>"admin", :catagory=>"academics" },

{ :linktitle => "Available Programs" , :linkcontroller => "available_programs",    :linkaction => "index",
    :linkicon => "/icons/calendar_add.png", :role_id=>"guest", :catagory=>"academics" },

{ :linktitle => "How to Apply" , :linkcontroller => "how_tos",    :linkaction => "index",
    :linkicon => "/icons/calendar_add.png", :role_id=>"guest", :catagory=>"academics" },

{ :linktitle => "Academic Calendar" , :linkcontroller => "calendar",    :linkaction => "new",
    :linkicon => "/icons/calendar_add.png", :role_id=>"admin", :catagory=>"academics" }

{ :linktitle => "Set Events" , :linkcontroller => "events",    :linkaction => "index",
    :linkicon => "/icons/calendar_add.png", :role_id=>"admin", :catagory=>"academics" },
]
menuitems.each do |menuitem|
  Menuitem.create!({:linktitle => menuitem[:linktitle],:linkcontroller => menuitem[:linkcontroller],
                :linkaction => menuitem[:linkaction], :linkicon => menuitem[:linkicon],
                :role_id => menuitem[:role_id], :catagory=>menuitem[:catagory] } )
end

#class_year 
class_years = [
  {:name => "1"},
  {:name => "2"},
  {:name => "3"},
  {:name => "4"},
  {:name => "5"}
]
class_years.each do |class_year|
  ClassYear.create!({:name => class_year[:name]})
end

#semester
semesters = [
  {:name => "1"},
  {:name => "2"},
  {:name => "3"}
  
]
semesters.each do |semester|
  Semester.create!({:name => semester[:name]})
end

#academic year
academic_years = [
  {:start_at => "2011-09-10", :end_at => "2012-06-10", :year => "2011/12", :status => false},
  {:start_at => "2012-09-15", :end_at => "2013-06-16", :year => "2012/13", :status => true},
  {:start_at => "2013-09-20", :end_at => "2013-06-19", :year => "2013/14", :status => true}
]

academic_years.each do |ac_year|
    AcademicYear.create! ({:start_at => ac_year[:start_at], :end_at => ac_year[:end_at], :year => ac_year[:year], :status => ac_year[:status]})
end

#academic year semester
academic_year_semesters = [
  {:academic_year_id => "2011/12", :semester_id => "1", :start_at => "2011-09-10", :end_at => "2012-01-20", :status => false},
  {:academic_year_id => "2011/12", :semester_id => "2", :start_at => "2012-02-10", :end_at => "2012-06-20", :status => false},
  {:academic_year_id => "2012/13", :semester_id => "1", :start_at => "2012-09-15", :end_at => "2013-01-25", :status => true},
  {:academic_year_id => "2012/13", :semester_id => "2", :start_at => "2013-01-10", :end_at => "2013-07-20", :status => true},
  {:academic_year_id => "2013/14", :semester_id => "1", :start_at => "2013-09-30", :end_at => "2014-01-10", :status => true},
  {:academic_year_id => "2013/14", :semester_id => "2", :start_at => "2014-01-01", :end_at => "2014-07-20", :status => true}


]
 academic_year_semesters.each do |ays|
  AcademicYearSemester.create!({:academic_year_id => AcademicYear.find_by_year(ays[:academic_year_id]),
                                :semester_id => Semester.find_by_name(ays[:semester_id]),
                                :start_at => ays[:start_at],
                                :end_at => ays[:end_at],
                                :status => ays[:status]})
 end






