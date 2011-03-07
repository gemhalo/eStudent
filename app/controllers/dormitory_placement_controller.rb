class DormitoryPlacementController < ApplicationController
  def place_dorm
    @buildings=Building.all
    @colleges=College.all
    
  end

  def dorm_placing_process
    @building=Building.find(params[:building])
    building=@building.building_name
    @colleges=College.find(params[:college])
    @students=Student.all
    students=Student.all
    @rooms=@building.number_of_rooms
    @beds=@building.number_of_beds_per_room
    @totalbeds=@building.number_of_rooms * @building.number_of_beds_per_room

    b=1
    studentcounter=0
    for r in 1..@rooms 
      for b in 1..@beds
        student=students[studentcounter.to_i]
        if student.nil?
          break
        else
        student.build_dormitory
        student.dormitory.building="#{building}"
        student.dormitory.room="#{r}"
        student.dormitory.bedno="#{b}"
        student.dormitory.save!
        studentcounter=studentcounter+1
        end
      end
    end
      
    render :action=>'show_placement'
  end

  def show_placement
    @students=Student.all
  end
end
