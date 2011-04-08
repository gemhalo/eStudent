require "fastercsv"
require 'csv'

class MoeDataImportController < ApplicationController

  def import
	@applicants=Applicant.not_verified
  end

  def upload

    @person = Person.new
    @applicant = Applicant.new
    @applicants = Applicant.not_verified
    @educational_background = EducationalBackground.new
    @person = []
    @applicant = []
    @educational_background  = []
    @file = params[:file]
    CSV.foreach(@file, :col_sep=> "," , :headers => true) do |row|
      unless Applicant.full_name_exists?(row[1].to_s.capitalize,row[2].to_s.capitalize,row[3].to_s.capitalize)
        applicant = Applicant.new
        applicant.name=row[1].to_s.capitalize
        applicant.father_name= row[2].to_s.capitalize
        applicant.grand_father_name = row[3].to_s.capitalize
        applicant.nationality= Nationality.where('name like ?',"%#{row[4]}%").first.id
        applicant.gender = row[5]
        applicant.disability = row[6]
        #applicant.region_code = row[8]

        applicant.college_id = College.where('name like ?', "%#{row[9]}%").first.id
        applicant.enrollment_mode_type_id = EnrollmentModeType.where('name like ? ', "%#{row[14]}%" )
        applicant.admission_id = Admission.by_admission_and_enrollment("#{row[12]}","#{row[13]}").first.id
        applicant.verified = false
        applicant.admission_status=true
        applicant.save!

        @educational_background << EducationalBackground.create!(
           { :eheece_code => row[0], :school_code => row[7], :result => row[10], :out_of => row[11],
             :applicant_id => applicant.id })
        @applicants << applicant
      end
    end
  end

  def show
    @applicants = Applicant.find(params[:id])
    #@person = Person.find(params[:id])
    @user = User.new
    @user = []
    #@applicant = Applicant.new
    flash[:notice] = []
    #@person.each  do |p|
    @applicants.each do |p|
      #     if p.user.nil?
      @password = User.random_string(6)

      @user << User.create!(
        :username => [p.name, p.educational_backgrounds.first.eheece_code].join.downcase,
        :password => @password,
        :password_confirmation => @password,
        :email => [p.name, p.educational_backgrounds.first.eheece_code,'@mu.edu.et'].join,
        :person_id => p.person_id,
        :temp_password => @password,
        :role => "student"
      )
      #    else
      #     flash[:notice] << "Account is creaated for #{p.full_name} the user name is #{p.user.username} and password #{p.user.temp_password}"

      # Generating ID Number for each imported student
      @applicant = Applicant.find_by_person_id([p.id])
      college= @applicant.college.name
      collegename=college[college.index("(")+1..college.index(")")-1].upcase
      program=@applicant.admission.admission_type.name[0].upcase
      enrollment=@applicant.admission.enrollment_type.name[0].upcase
      date=Date.today  # will be replaced by academic_year
      seqno=@applicant.id.to_s
      while(seqno.length < 4)
        seqno="0" << "#{seqno}"
      end
      if ((1..8)===date.month or(date.month==9 and date.day<11))
        ethiopian_year=date.year - 8
      else
        ethiopian_year=date.year - 7
      end
      idnumber="#{collegename}" << "/" << "#{program}" << "#{enrollment}" << "#{seqno}" << "/" << "#{ethiopian_year}"
      @applicant.build_student
      @applicant.student.id_number=idnumber
      @applicant.student.save!
    end
  end


end

