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
Admission.delete_all
User.delete_all
Building.delete_all

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
                        :enrollment_type_id => EnrollmentType.find_by_name(enrollment_type1)
                      })
  end

end

#Create users
users = [
  { :username => "gere" , :password => "gere",    :role => "student",
    :email => "student@campus.com" },
  { :username => "samy" , :password => "samy",    :role => "instructor",
    :email => "instructor@campus.com"},
  { :username => "yemane",:password => "yemane",  :role => "student_service_staff",
    :email => "sss@campus.com"},
  { :username => "admin",:password => "admin",  :role => "admin",
    :email => "admin@campus.com"}

]

users.each do |user|
  User.create!({:username => user[:username],:password => user[:password],
                :password_confirmation => user[:password], :role => user[:role],
                :email => user[:email] } )
end

#College
colleges = [
  { :name => "Natural and Computational Science", :campus => "Arid(Endayesus)" } ,
  { :name => "Engineering" , :campus => "Arid(Endayesus)" } ,
  { :name => "Social Sciences & Languages", :campus => "Arid(Endayesus)"} ,
  { :name => "Ethiopian Institute of Technology", :campus => "Arid(Endayesus)" } ,
  { :name => "Business and Economics" , :campus => "Adi-Haqi" } ,
  { :name => "Law" , :campus => "Adi-Haqi" },
  { :name => "Medicine" , :campus => "Ayder" }

]

colleges.each do | college |
  College.create!({ :name => college[:name], :campus_id => Campus.find_by_name(college[:campus])
  })
end

#Department
departments = [
  { :name => "Biology", :college => "Natural and Computational Science"},
  { :name => "Chemistry", :college => "Natural and Computational Science"},
  { :name => "Earth Sciencees", :college => "Natural and Computational Science" },
  { :name => "Physics", :college => "Natural and Computational Science" },
  { :name => "Architecture and Urban Planning", :college => "Natural and Computational Science" },
  { :name => "Civil Engineering", :college => "Natural and Computational Science" },
  { :name => "Computing", :college => "Natural and Computational Science" },
  { :name => "Mechanical Engineering", :college => "Natural and Computational Science" },
  { :name => "Geography and Environmental Sciences", :college => "Natural and Computational Science" },
  { :name => "Electrical and Computer Engineering", :college => "Natural and Computational Science" },
  { :name => "Industrial Engineering", :college => "Natural and Computational Science" }
]
departments.each do |department|
  Department.create!({ :name => department[:name],
                     :college_id => College.find_by_name(department[:college]).id,
                     :dept_head => "-" } )
end

#AdmissionTypes
admissionTypes = ["Undergraduate", "Post Graduate","Mature age"]

admissionTypes.each do |admissionType|
   AdmissionType.create!(:name => admissionType)
end

#EnrollmentTypes
enrollmentTypes = ["Regular", "Extension", "Summer","Distance"]
enrollmentTypes.each do |enrollmentType|
  EnrollmentType.create!(:name => enrollmentType)
end
=======

