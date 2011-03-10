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
    @rooms=@building.rooms
    rooms=@rooms.count
    #@beds=@building.number_of_beds_per_room
    #@totalbeds=@building.number_of_rooms * @building.number_of_beds_per_room

    studentcounter=0
    for room in @rooms
      for bed in 1..room.holding_capacity
        student=students[studentcounter.to_i]
        if student.nil?
          break
        else
        student.build_dormitory
        #student.dormitory.building="#{building}"
        student.dormitory.room_id=room.id
        student.dormitory.bed_number="#{bed}"
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

  def edit
    @dormitory=Dormitory.find(params[:id])
  end

  def update
    
    @dormitory=Dormitory.find(params[:id])
    @dormitory.update_attributes(params[:dormitory])
    @students=Student.all
    render :action=> 'show_placement'
  end

    def destroy
    @dormitory = Dormitory.find(params[:id])
    @dormitory.destroy
    flash[:notice]="deleted"
    render :action=>''
  end
end
