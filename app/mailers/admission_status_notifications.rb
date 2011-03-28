class AdmissionStatusNotifications < ActionMailer::Base
  default :from => "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.admission_status_notifications.notification.subject
  #
  def self.notification (collageid,acadamiccalanderid)
     @applicant = Applicant.find_by_sql("select applicants.admission_status,people.name,users.email
                                                  Inner join people on applicants.person_id = people.id
                                                  Inner join users on people.id = users.person_id where applicants.collageid and applicants.accadamic_year",collageid,acadamiccalanderid )
    @applicant.each do |app|

        @subject= "Mekelle University: Admission Status Notification"
        @body= "Dear...#{app.name} your Document is Reviewed  and you are #{app.admission_status} "
        @recipients= app.email
        @from= 'yonimethodic@gmail.com'
        @sent_on = Time.now
        @headers = {}

    end
   
  end
end
