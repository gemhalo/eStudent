class AdmissionStatusNotifications < ActionMailer::Base
     default :from => "yonimethodic@gmail.com"
  def notification (collageid,acadamiccalanderid)

    @applicant = Applicant.where('applicants.college_id = ? and applicants.academic_year = ?',collageid,acadamiccalanderid)

    logger.info("------------sscount----------#{@applicant.count}")
      if (@applicant.count != 0)

          @applicant.each do |app|

            logger.info("------------sscountvv----------#{app.person.user.email}")

         mail(:to => app.person.user.email, :subject => "Mekelle University: Admission Status Notification", :from => "yonimethodic@gmail.com",:date => Time.now)

        @username = Person.find(app.person).name
        @message = app.admission_status

      end
    else

                return  $messa = "There no applicants to notify"
    

    end
end
end
