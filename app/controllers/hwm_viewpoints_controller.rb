class HwmViewpointsController < ApplicationController
  # GET /hwm_viewpoints
  # GET /hwm_viewpoints.json
  def index
    @hwm_viewpoints = HwmViewpoint.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hwm_viewpoints }
    end
  end

  # GET /hwm_viewpoints/1
  # GET /hwm_viewpoints/1.json
  def show
    @hwm_viewpoint = HwmViewpoint.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hwm_viewpoint }
    end
  end

  # GET /hwm_viewpoints/new
  # GET /hwm_viewpoints/new.json
  def new
    @hwm_viewpoint = HwmViewpoint.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hwm_viewpoint }
    end
  end

  # GET /hwm_viewpoints/1/edit
  def edit
    @hwm_viewpoint = HwmViewpoint.find(params[:id])
  end

  # POST /hwm_viewpoints
  # POST /hwm_viewpoints.json
  def create
    @hwm_viewpoint = HwmViewpoint.new(params[:hwm_viewpoint])

    respond_to do |format|
      if @hwm_viewpoint.save
        format.html { redirect_to @hwm_viewpoint, notice: 'Hwm viewpoint was successfully created.' }
        format.json { render json: @hwm_viewpoint, status: :created, location: @hwm_viewpoint }
      else
        format.html { render action: "new" }
        format.json { render json: @hwm_viewpoint.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hwm_viewpoints/1
  # PUT /hwm_viewpoints/1.json
  def update
    @hwm_viewpoint = HwmViewpoint.find(params[:id])

    respond_to do |format|
      if @hwm_viewpoint.update_attributes(params[:hwm_viewpoint])
        format.html { redirect_to @hwm_viewpoint, notice: 'Hwm viewpoint was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hwm_viewpoint.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hwm_viewpoints/1
  # DELETE /hwm_viewpoints/1.json
  def destroy
    @hwm_viewpoint = HwmViewpoint.find(params[:id])
    @hwm_viewpoint.destroy

    respond_to do |format|
      format.html { redirect_to hwm_viewpoints_url }
      format.json { head :no_content }
    end
  end
end
