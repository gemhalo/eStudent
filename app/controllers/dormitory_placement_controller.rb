class DormitoryPlacementController < ApplicationController

  def place_dorm
  end

  def select_group
    if params[:group]=="group"
      render :action=>'group_dorm_placement_form'
    elsif params[:group]=="individual"
      redirect_to :action=>'individual_dorm_placement_form'
    end
  end

  def individual_dorm_placement_form
    @dormitory=Dormitory.new 
  end

  def individual_dorm_placement
    @dormitory=Dormitory.new(params[:dormitory])
    @student=Student.find_by_id_number(params[:student][:id_number])
    @dormitory.student=@student
    @dormitory.save!
    redirect_to :action=>"show_placement"
  end

  def group_dorm_placement_form
  end

  def group_dorm_placement

    @dormitories = Dormitory.all

    if params[:building].nil? or params[:college].nil? or params[:class_year].nil? or params[:gender].nil?
     flash[:notice] = "Please Fill All the Fields"
      render :action=>"place_dorm"
    else

    buildings=Building.find(params[:building])
    gender=params[:gender]

    class_year=params[:class_year]
    college=params[:college]
    
      students=Student.all(:include=>[:department,:applicant=>[:person]], :conditions=>
      ("people.gender='#{gender}' and departments.college_id=#{college}"))
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

