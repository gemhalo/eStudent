class EventViewerController < ApplicationController
  def index
    @event = Event.all
    @admission = Admission.all
  end

 def index
   @event = Event.all
 end
  def show
    @event = Event.where('admission_id =?', params[:id])
    #@event = Event.find_all_by_admission_id(params[:id])
  end

end