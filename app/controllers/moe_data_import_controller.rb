require "fastercsv"
require 'csv'

class MoeDataImportController < ApplicationController

  def import
	@applicants=Applicant.not_verified
  end

  def upload
    @person = Person.new
    @applicant = Applicant.new
    @educational_background  = EducationalBackground.new
    @person = []
    @applicant = []
    @educational_background  = []
    
    @applicants = Applicant.not_verified
    #@educational_background = EducationalBackground.new
    
    @file = params[:file]
    CSV.foreach(@file, :col_sep=> "," , :headers => true) do |row|

      @person << Person.create(:name => row[1],

              	:father_name => row[2],
                :grand_father_name => row[3],
                #:nationality_id => (Nationality.where('name = ?', row[4])).first.id,
                :gender => row[5],
                :disability => row[6],
                :region_code => row[8] )

       @applicant << Applicant.create(:person_id => Person.last.id,
                  :college_id => College.where('name like ?', "%#{row[9]}%").first,
                  #:enrollment_mode_type_id => EnrollmentModeType.where('name like ? ', "%#{row[14]}%" ).first.id,
                  :admission_id => Admission.where('admission_type_id = ? and enrollment_type_id = ?',
                    AdmissionType.where('name like ?', "%#{row[12]}%").first,
                    EnrollmentType.where('name like ?', "%#{row[13]}%").first).first.id,
                    :verified => false
		  #:admission_status => false
			
 #:admission_status_type_id => AdmissionStatusType.where('name= ?',row[15]).first.id
              )

       @educational_background << EducationalBackground.create(:eheece_code => row[0],
              	:school_code => row[7],
                :result => row[10],
                :out_of => row[11],
                :applicant_id => Applicant.last.id
        )

      end



end

  def show

    @person = Person.find(params[:id])
    @user = User.new
    @user = []

      @person.each  do |p|


        #Generating ID number for each imported student

      
         a=p.applicant[0]
            college=a.college.name
            collegename=college[college.index("(")+1..college.index(")")-1].upcase
            program=a.admission.admission_type.name[0].upcase
            enrollment=a.admission.enrollment_type.name[0].upcase
            date=Date.today  # will be replaced by academic_year
            seqno=a.id.to_s
            while(seqno.length < 4)
              seqno="0" << "#{seqno}"
            end
            if ((1..8)===date.month or(date.month==9 and date.day<11))
              ethiopian_year=date.year - 8
            else
              ethiopian_year=date.year - 7
            end
            idnumber="#{collegename}" << "/" << "#{program}" << "#{enrollment}" << "#{seqno}" << "/" << "#{ethiopian_year}"
            a.temp_id_number=idnumber
            a.save!

          @password = p.random_string(6)

           @user << User.create!(
              :username => [p.name, p.applicant.first.educational_backgrounds.first.eheece_code].join,
              :password => @password,
              :password_confirmation => @password,
              :email => [p.name, p.applicant.first.educational_backgrounds.first.eheece_code,'@mu.edu.et'].join,
              :person_id => p.id,
              :temp_password => @password,
              :role => "student"

            )

      end
    end
end

