class AdmissionStatusNotifications < ActionMailer::Base
     default :from => "yonimethodic@gmail.com"

  def notification(applicant_id)

    @applicant = Applicant.find(applicant_id)
    logger.info("------adsta-----#{@applicant.admission_status}")
       @username = @applicant.person.name
        @message =  @applicant.admission_status
  mail(:to =>  @applicant.person.user.email, :subject => "Mekelle University: Admission Status Notification", :from => "yonimethodic@gmail.com",:date => Time.now)

        

    
end
end
