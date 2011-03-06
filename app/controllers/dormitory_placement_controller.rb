class DormitoryPlacementController < ApplicationController
  def place_dorm
    @buildings=Building.all
    @colleges=College.all
    
  end

  def dorm_placing_process
    @building=Building.find(params[:building_name])
    @collegesCollege.find(params[:college])
    @students=Student.all
    @rooms=@building.number_of_rooms
    @beds=@building.number_of_beds_per_room
    @totalbeds=@building.number_of_rooms * @building.number_of_beds_per_room

    for s in @students
      for r in 1..@rooms
        for b in 1..@beds
          s.dormitory.dorm="#{@building} " << "Room " << "#{r}" << "Bed No " << "#{b}"
        end
      end
    end
    redirect_to :action=>'show_placement'
  end

  def show_placement
    @students=Student.all
  end
end
