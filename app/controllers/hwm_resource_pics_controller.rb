class HwmResourcePicsController < ApplicationController
  # GET /hwm_resource_pics
  # GET /hwm_resource_pics.json
  def index
    @hwm_resource_pics = HwmResourcePic.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hwm_resource_pics }
    end
  end

  # GET /hwm_resource_pics/1
  # GET /hwm_resource_pics/1.json
  def show
    @hwm_resource_pic = HwmResourcePic.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hwm_resource_pic }
    end
  end

  # GET /hwm_resource_pics/new
  # GET /hwm_resource_pics/new.json
  def new
    @hwm_resource_pic = HwmResourcePic.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hwm_resource_pic }
    end
  end

  # GET /hwm_resource_pics/1/edit
  def edit
    @hwm_resource_pic = HwmResourcePic.find(params[:id])
  end

  # POST /hwm_resource_pics
  # POST /hwm_resource_pics.json
  def create
    @hwm_resource_pic = HwmResourcePic.new(params[:hwm_resource_pic])

    respond_to do |format|
      if @hwm_resource_pic.save
        format.html { redirect_to @hwm_resource_pic, notice: 'Hwm resource pic was successfully created.' }
        format.json { render json: @hwm_resource_pic, status: :created, location: @hwm_resource_pic }
      else
        format.html { render action: "new" }
        format.json { render json: @hwm_resource_pic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hwm_resource_pics/1
  # PUT /hwm_resource_pics/1.json
  def update
    @hwm_resource_pic = HwmResourcePic.find(params[:id])

    respond_to do |format|
      if @hwm_resource_pic.update_attributes(params[:hwm_resource_pic])
        format.html { redirect_to @hwm_resource_pic, notice: 'Hwm resource pic was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hwm_resource_pic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hwm_resource_pics/1
  # DELETE /hwm_resource_pics/1.json
  def destroy
    @hwm_resource_pic = HwmResourcePic.find(params[:id])
    @hwm_resource_pic.destroy

    respond_to do |format|
      format.html { redirect_to hwm_resource_pics_url }
      format.json { head :no_content }
    end
  end
end
