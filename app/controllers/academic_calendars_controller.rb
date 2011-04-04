class AcademicCalendarsController < ApplicationController
  # GET /academic_calendars
  # GET /academic_calendars.xml
  def index
    @academic_calendars = AcademicCalendar.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @academic_calendars }
    end
  end

  # GET /academic_calendars/1
  # GET /academic_calendars/1.xml
  def show
    @academic_calendar = AcademicCalendar.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @academic_calendar }
    end
  end

  # GET /academic_calendars/new
  # GET /academic_calendars/new.xml
  def new
    @academic_calendar = AcademicCalendar.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @academic_calendar }
    end
  end

  # GET /academic_calendars/1/edit
  def edit
    @academic_calendar = AcademicCalendar.find(params[:id])
  end

  # POST /academic_calendars
  # POST /academic_calendars.xml
  def create
    @academic_calendar = AcademicCalendar.new(params[:academic_calendar])

    respond_to do |format|
      if @academic_calendar.save
        format.html { redirect_to(@academic_calendar, :notice => 'Academic calendar was successfully created.') }
        format.xml  { render :xml => @academic_calendar, :status => :created, :location => @academic_calendar }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @academic_calendar.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /academic_calendars/1
  # PUT /academic_calendars/1.xml
  def update
    @academic_calendar = AcademicCalendar.find(params[:id])

    respond_to do |format|
      if @academic_calendar.update_attributes(params[:academic_calendar])
        format.html { redirect_to(@academic_calendar, :notice => 'Academic calendar was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @academic_calendar.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /academic_calendars/1
  # DELETE /academic_calendars/1.xml
  def destroy
    @academic_calendar = AcademicCalendar.find(params[:id])
    @academic_calendar.destroy

    respond_to do |format|
      format.html { redirect_to(academic_calendars_url) }
      format.xml  { head :ok }
    end
  end
end
