class HwmResourceLinksController < ApplicationController
  # GET /hwm_resource_links
  # GET /hwm_resource_links.json
  def index
    @hwm_resource_links = HwmResourceLink.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hwm_resource_links }
    end
  end

  # GET /hwm_resource_links/1
  # GET /hwm_resource_links/1.json
  def show
    @hwm_resource_link = HwmResourceLink.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hwm_resource_link }
    end
  end

  # GET /hwm_resource_links/new
  # GET /hwm_resource_links/new.json
  def new
    @hwm_resource_link = HwmResourceLink.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hwm_resource_link }
    end
  end

  # GET /hwm_resource_links/1/edit
  def edit
    @hwm_resource_link = HwmResourceLink.find(params[:id])
  end

  # POST /hwm_resource_links
  # POST /hwm_resource_links.json
  def create
    @hwm_resource_link = HwmResourceLink.new(params[:hwm_resource_link])

    respond_to do |format|
      if @hwm_resource_link.save
        format.html { redirect_to @hwm_resource_link, notice: 'Hwm resource link was successfully created.' }
        format.json { render json: @hwm_resource_link, status: :created, location: @hwm_resource_link }
      else
        format.html { render action: "new" }
        format.json { render json: @hwm_resource_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hwm_resource_links/1
  # PUT /hwm_resource_links/1.json
  def update
    @hwm_resource_link = HwmResourceLink.find(params[:id])

    respond_to do |format|
      if @hwm_resource_link.update_attributes(params[:hwm_resource_link])
        format.html { redirect_to @hwm_resource_link, notice: 'Hwm resource link was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hwm_resource_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hwm_resource_links/1
  # DELETE /hwm_resource_links/1.json
  def destroy
    @hwm_resource_link = HwmResourceLink.find(params[:id])
    @hwm_resource_link.destroy

    respond_to do |format|
      format.html { redirect_to hwm_resource_links_url }
      format.json { head :no_content }
    end
  end
end
