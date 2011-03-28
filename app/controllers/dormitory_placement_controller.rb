class DormitoryPlacementController < ApplicationController
  layout "student_service_staff"

  def place_dorm
    @buildings=Building.all
    @colleges=College.all

  end

  def dorm_placing_process

    @dormitories = Dormitory.all

    @building=Building.find(params[:building]) unless params[:building].nil? do
      building=@building.building_name
      @rooms=@building.rooms

      @colleges=College.find(params[:college]) unless params[:college].nil? do
          students=Student.all
          rooms=@rooms.count
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
    end
      flash[:warning] = "You have not given any parameters"
      redirect_to dormitories_path
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

  # This piece of code deletes Dormitory

  def destroy
    @dormitory = Dormitory.find(params[:id])
    @dormitory.destroy
    flash[:notice]="deleted"
    render :action=>''
  end

end

