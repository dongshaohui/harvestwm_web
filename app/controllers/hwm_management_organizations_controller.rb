class HwmManagementOrganizationsController < ApplicationController
  # GET /hwm_management_organizations
  # GET /hwm_management_organizations.json
  def index
    @hwm_management_organizations = HwmManagementOrganization.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hwm_management_organizations }
    end
  end

  # GET /hwm_management_organizations/1
  # GET /hwm_management_organizations/1.json
  def show
    @hwm_management_organization = HwmManagementOrganization.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hwm_management_organization }
    end
  end

  # GET /hwm_management_organizations/new
  # GET /hwm_management_organizations/new.json
  def new
    @hwm_management_organization = HwmManagementOrganization.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hwm_management_organization }
    end
  end

  # GET /hwm_management_organizations/1/edit
  def edit
    @hwm_management_organization = HwmManagementOrganization.find(params[:id])
  end

  # POST /hwm_management_organizations
  # POST /hwm_management_organizations.json
  def create
    @hwm_management_organization = HwmManagementOrganization.new(params[:hwm_management_organization])

    respond_to do |format|
      if @hwm_management_organization.save
        format.html { redirect_to @hwm_management_organization, notice: 'Hwm management organization was successfully created.' }
        format.json { render json: @hwm_management_organization, status: :created, location: @hwm_management_organization }
      else
        format.html { render action: "new" }
        format.json { render json: @hwm_management_organization.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hwm_management_organizations/1
  # PUT /hwm_management_organizations/1.json
  def update
    @hwm_management_organization = HwmManagementOrganization.find(params[:id])

    respond_to do |format|
      if @hwm_management_organization.update_attributes(params[:hwm_management_organization])
        format.html { redirect_to @hwm_management_organization, notice: 'Hwm management organization was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hwm_management_organization.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hwm_management_organizations/1
  # DELETE /hwm_management_organizations/1.json
  def destroy
    @hwm_management_organization = HwmManagementOrganization.find(params[:id])
    @hwm_management_organization.destroy

    respond_to do |format|
      format.html { redirect_to hwm_management_organizations_url }
      format.json { head :no_content }
    end
  end
end
