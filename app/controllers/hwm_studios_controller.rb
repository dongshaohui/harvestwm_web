class HwmStudiosController < ApplicationController
  # GET /hwm_studios
  # GET /hwm_studios.json
  def index
    @hwm_studios = HwmStudio.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hwm_studios }
    end
  end

  # GET /hwm_studios/1
  # GET /hwm_studios/1.json
  def show
    @hwm_studio = HwmStudio.find(params[:id])
    @user_account_list = @hwm_studio.hwm_user_accounts ## 工作室关联的投资顾问列表
    @product_list = 
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hwm_studio }
    end
  end

  # GET /hwm_studios/new
  # GET /hwm_studios/new.json
  def new
    @hwm_studio = HwmStudio.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hwm_studio }
    end
  end

  # GET /hwm_studios/1/edit
  def edit
    @hwm_studio = HwmStudio.find(params[:id])
  end

  # POST /hwm_studios
  # POST /hwm_studios.json
  def create
    @hwm_studio = HwmStudio.new(params[:hwm_studio])

    respond_to do |format|
      if @hwm_studio.save
        format.html { redirect_to @hwm_studio, notice: 'Hwm studio was successfully created.' }
        format.json { render json: @hwm_studio, status: :created, location: @hwm_studio }
      else
        format.html { render action: "new" }
        format.json { render json: @hwm_studio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hwm_studios/1
  # PUT /hwm_studios/1.json
  def update
    @hwm_studio = HwmStudio.find(params[:id])

    respond_to do |format|
      if @hwm_studio.update_attributes(params[:hwm_studio])
        format.html { redirect_to @hwm_studio, notice: 'Hwm studio was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hwm_studio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hwm_studios/1
  # DELETE /hwm_studios/1.json
  def destroy
    @hwm_studio = HwmStudio.find(params[:id])
    @hwm_studio.destroy

    respond_to do |format|
      format.html { redirect_to hwm_studios_url }
      format.json { head :no_content }
    end
  end
end
