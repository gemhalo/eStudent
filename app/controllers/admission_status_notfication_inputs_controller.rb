class AdmissionStatusNotficationInputsController < ApplicationController
  
  def send
    @collage = Collage.all
    collageid = params[:collage]
    acadamic = params[:acadamic]
    
    AdmissionStatusNotifications.notification(collageid, acadamic)
  end

end
