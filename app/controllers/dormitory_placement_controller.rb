class DormitoryPlacementController < ApplicationController
  layout "student_service_staff"

  def place_dorm
    @buildings=Building.all
    @colleges=College.all

  end

  def select_batch
    if params[:batch]=="fresh"
      render :action=>'fresh_students_dorm_placement'
    elsif params[:batch]=="others"
      render :action=>'existing_students_dorm_placement'
    end
  end

  def fresh_students_dorm_placement
  end

  def existing_students_dorm_placement
  end

  def dorm_placing_process

    @dormitories = Dormitory.all

    if params[:building].nil? or params[:college].nil?
     flash[:notice] = "Please Fill All the Fields"
      render :action=>"place_dorm"
    else

    buildings=Building.find(params[:building])
    gender=params[:gender]

    class_year=params[:class_year] unless params[:class_year].nil?
    college=params[:college] unless params[:college].nil?
    department=Department.find(params[:department]) unless params[:department].nil?

      students=Student.all(:include=>[:department,:applicant=>[:person]], :conditions=>
      ("departments.college_id=#{college}"))
          studentcounter=0
        for b in buildings
            @rooms=b.rooms
          for room in @rooms
            for bed in 1..room.holding_capacity
              student=students[studentcounter.to_i]
              if student.nil?
                break
              else
                if student.dormitory.nil?
                  student.build_dormitory
                end
                student.dormitory.room_id=room.id
                student.dormitory.bed_number="#{bed}"
                student.dormitory.save!
                studentcounter=studentcounter+1
              end
            end
          end
      end
          redirect_to :action=>"show_placement"
    end
      #redirect_to dormitories_path
  end

  def show_placement
    @dormitories=Dormitory.all

  end

  def edit
    @dormitory=Dormitory.find(params[:id])
  end

  def update

    @dormitory=Dormitory.find(params[:id])
    @dormitory.update_attributes(params[:dormitory])
    redirect_to :action=> 'show_placement'
  end

  # This piece of code deletes Dormitory

  def destroy
    @dormitory = Dormitory.find(params[:id])
    @dormitory.destroy
    flash[:notice]="deleted"
    redirect_to :action=> 'show_placement'
  end

end

