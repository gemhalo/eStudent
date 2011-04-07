class DepartmentQuotasController < ApplicationController
  # GET /department_quotas
  # GET /department_quotas.xml
  def index
    @department_quotas = DepartmentQuota.all
    @applicants=Applicant.not_approved
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @department_quotas }
    end
  end

  # GET /department_quotas/1
  # GET /department_quotas/1.xml
  def show
    @department_quota = DepartmentQuota.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @department_quota }
    end
  end

  # GET /department_quotas/new
  # GET /department_quotas/new.xml
  def new
    @department_quota = DepartmentQuota.new
    @applicants=Applicant.not_approved


    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @department_quota }
    end
  end

  # GET /department_quotas/1/edit
  def edit
    @department_quota = DepartmentQuota.find(params[:id])
  end

  # POST /department_quotas
  # POST /department_quotas.xml
  def create
    @department_quota = DepartmentQuota.new(params[:department_quota])

    respond_to do |format|
      if @department_quota.save
        format.html { redirect_to(@department_quota, :notice => 'Department quota was successfully created.') }
        format.xml  { render :xml => @department_quota, :status => :created, :location => @department_quota }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @department_quota.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /department_quotas/1
  # PUT /department_quotas/1.xml
  def update
    @department_quota = DepartmentQuota.find(params[:id])

    respond_to do |format|
      if @department_quota.update_attributes(params[:department_quota])
        format.html { redirect_to(@department_quota, :notice => 'Department quota was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @department_quota.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /department_quotas/1
  # DELETE /department_quotas/1.xml
  def destroy
    @department_quota = DepartmentQuota.find(params[:id])
    @department_quota.destroy

    respond_to do |format|
      format.html { redirect_to(department_quotas_url) }
      format.xml  { head :ok }
    end
  end

end
