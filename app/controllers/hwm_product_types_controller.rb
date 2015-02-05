class HwmProductTypesController < ApplicationController
  # GET /hwm_product_types
  # GET /hwm_product_types.json
  def index
    @hwm_product_types = HwmProductType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hwm_product_types }
    end
  end

  # GET /hwm_product_types/1
  # GET /hwm_product_types/1.json
  def show
    @hwm_product_type = HwmProductType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hwm_product_type }
    end
  end

  # GET /hwm_product_types/new
  # GET /hwm_product_types/new.json
  def new
    @hwm_product_type = HwmProductType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hwm_product_type }
    end
  end

  # GET /hwm_product_types/1/edit
  def edit
    @hwm_product_type = HwmProductType.find(params[:id])
  end

  # POST /hwm_product_types
  # POST /hwm_product_types.json
  def create
    @hwm_product_type = HwmProductType.new(params[:hwm_product_type])

    respond_to do |format|
      if @hwm_product_type.save
        format.html { redirect_to @hwm_product_type, notice: 'Hwm product type was successfully created.' }
        format.json { render json: @hwm_product_type, status: :created, location: @hwm_product_type }
      else
        format.html { render action: "new" }
        format.json { render json: @hwm_product_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hwm_product_types/1
  # PUT /hwm_product_types/1.json
  def update
    @hwm_product_type = HwmProductType.find(params[:id])

    respond_to do |format|
      if @hwm_product_type.update_attributes(params[:hwm_product_type])
        format.html { redirect_to @hwm_product_type, notice: 'Hwm product type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hwm_product_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hwm_product_types/1
  # DELETE /hwm_product_types/1.json
  def destroy
    @hwm_product_type = HwmProductType.find(params[:id])
    @hwm_product_type.destroy

    respond_to do |format|
      format.html { redirect_to hwm_product_types_url }
      format.json { head :no_content }
    end
  end
end
