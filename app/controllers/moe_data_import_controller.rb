require "fastercsv"
require 'csv'

class MoeDataImportController < ApplicationController
  layout  'student_service_staff'

  def import
  end

  def upload

    @person = Person.new
    @applicant = Applicant.new
    @educational_background = EducationalBackground.new
    @person = []
    @applicant = []
    @educational_background  = []

    @file = params[:file]
    CSV.foreach(@file, :col_sep=> ",", :headers => true) do |row|

      @person << Person.create(:name => row[1],

              	:father_name => row[2],
                :grand_father_name => row[3],
                :nationality_id => (Nationality.where('name = ?', row[4])).first.id,

                :gender => row[5],
                :disability => row[6],
                :region_code => row[8] )
              
       @applicant << Applicant.create(:person_id => Person.last.id,
                  :college_id => row[9])

       @educational_background << EducationalBackground.create(:eheece_code => row[0],
              	:school_code => row[7],
                :result => row[10],
                :out_of => row[11],
                :applicant_id => Applicant.last.id)
             
              end
       
      
      @person.each  do |p|
      @password = p.random_string(6)
      @user= User.create(
        :username => [p.name, p.applicant.educational_background.first.eheece_code].join,
        :password => @password,
        :password_confirmation => @password,
        :email => [p.name, p.applicant.educational_background.first.eheece_code,'@mu.edu.et'].join,
        :person_id => p.id,
        :temp_password => @password
      )

      
          if @user.save
              flash[:notice] =  "Account Created"
          else
              flash[:notice] = "account Not Really Created"
          end
       

end
end

  def show
    @user = params[:user]
  end
end
