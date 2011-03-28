class AdmissionStatusNotficationInputsController < ApplicationController
  def new
    @collage = College.all
  end
  def sendadmisson
    @collage = College.all

    collageid = params[:collage]
    acadamic = params[:acadamic]
    AdmissionStatusNotifications.notification(collageid, acadamic).deliver
    
  end

end
