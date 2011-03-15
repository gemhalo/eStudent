# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

#Campuses
campuses = ["Adi-Haqi","Arid(Endayesus)", "Ayder"]
campuses.each do |campus|
  Campus.create!(:name => campus)
end

#College
colleges = [
  "Natural and Computational Science",
  "Engineering",
  "Social Sciences & Languages",
  "Ethiopian Institute of Technology"
]

colleges.each do |college|
  College.create!(:name => college, :campus_id => 0 )
end

#Department 
departments = [
  "Biology",
  "Chemistry",
  "Earth Sciences", 
  "Physics",
  "Architecture and Urban Planning",
  "Civil Engineering",
  "Computing",
  "Mechanical Engineering",
  "Geography and Environmental Sciences",
  "Electrical and Computer Engineering", 
  "Industrial Engineering"
]
departments.each do |department|
  Department.create!(:name => department, :college_id => 0,:dept_head => "-")
end

users = ["student","instructor","student_service_staff"]
users.each do |user|
  User.create!({:username => user,:password => user, :password_confirmation => user, :role => user, :email => "#{user}@mu.edu.et" } )
end
