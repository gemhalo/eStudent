class DormitoryPlacementController < ApplicationController
  def place_dorm
    @buildings=Building.all
    @colleges=College.all
  end

  def dorm_placing_process
    @building=Building.find(params[:building_name])
    @collegesCollege.find(params[:college])
    @students=Student.all(:conditions=>["college=@college and sex=params[:sex]"])
    @rooms=@building.number_of_rooms
    @beds=@building.number_of_beds_per_room
    @totalbeds=@building.number_of_rooms * @building.number_of_beds_per_room
    
  end
end
