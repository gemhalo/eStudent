class AdddropsController < ApplicationController
  def add
  end

  def drop
  end

  def notification
  end

  def course_add_request_list
    @add_requests=AddDrop.course_add_requests
  end

  def approve_add
    @add=AddDrop.find(params[:id])
    @add.add_drop_status=true
    Enrollment.create!(:registration_id=>@add.registration_id,
                      :offered_course_id=>@add.offered_course_id,
                      :add_drop_status=>"added"
    )
    render :action=>"notification"
  end

  def decline_add
    @add=AddDrop.find(params[:id])
    @add.add_drop_status=false
    render :action=>"notification"
  end

  def course_drop_request_list
    @drop_requests=AddDrop.course_drop_requests
  end

  def approve_drop
    @drop=AddDrop.find(params[:id])
    @drop.add_drop_status=true
    @enrollment=Enrollment.find_by_offered_course_id(@drop.offered_course_id)
    @enrollment.add_drop_status="dropped"
    render :action=>"notification"
  end

  def decline_drop
    @drop=AddDrop.find(params[:id])
    @drop.add_drop_status=false
    render :action=>"notification"
  end

end
