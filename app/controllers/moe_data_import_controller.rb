require "fastercsv"
require 'csv'

class MoeDataImportController < ApplicationController
  def import

  end

  def upload

    @person = Person.new
    @student = Student.new
    @educational_background = EducationalBackground.new
    @person = []
    @student = []
    @educational_background  = []

    @file = params[:file]
      #logger.info("filelllllllllllllllll #{CSV::Reader.parse(@file)}")
   	CSV.foreach(@file, :col_sep=> ",", :headers => true) do |row|

      @person << Person.create(:name => row[1],

              	:father_name => row[2],
                :grand_father_name => row[3],
                :nationality_id => (Nationality.where('name = ?', row[4])).first.id,

                :gender => row[5],
                :disability => row[6],
                :region_code => row[8] )
              
    @student << Student.create(:person_id => Person.last.id ,
               :college_name=> row[9])


      @educational_background << EducationalBackground.create(:EHEECE_code => row[0],
              	:school_code => row[7],
                :EHEECE_result => row[10],
                :EHEECE_maximum_result => row[11],
                :student_id => Student.last.id)

          

   end

#    @user_name= Array.new
#    #@i=0
#    @person.each  do |p|
#        User.create(:username => [p.name, p.student.educational_backgrounds.last.EHEECE_code].join, :email => p.random_string(6))
#   end

         @myfile =  CSV.read(@file, :col_sep => ",", :headers => false)
          
  end
  
end

