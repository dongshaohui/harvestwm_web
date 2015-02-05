class HwmLabelTypesController < ApplicationController
  # GET /hwm_label_types
  # GET /hwm_label_types.json
  def index
    @hwm_label_types = HwmLabelType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hwm_label_types }
    end
  end

  # GET /hwm_label_types/1
  # GET /hwm_label_types/1.json
  def show
    @hwm_label_type = HwmLabelType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hwm_label_type }
    end
  end

  # GET /hwm_label_types/new
  # GET /hwm_label_types/new.json
  def new
    @hwm_label_type = HwmLabelType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hwm_label_type }
    end
  end

  # GET /hwm_label_types/1/edit
  def edit
    @hwm_label_type = HwmLabelType.find(params[:id])
  end

  # POST /hwm_label_types
  # POST /hwm_label_types.json
  def create
    @hwm_label_type = HwmLabelType.new(params[:hwm_label_type])

    respond_to do |format|
      if @hwm_label_type.save
        format.html { redirect_to @hwm_label_type, notice: 'Hwm label type was successfully created.' }
        format.json { render json: @hwm_label_type, status: :created, location: @hwm_label_type }
      else
        format.html { render action: "new" }
        format.json { render json: @hwm_label_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hwm_label_types/1
  # PUT /hwm_label_types/1.json
  def update
    @hwm_label_type = HwmLabelType.find(params[:id])

    respond_to do |format|
      if @hwm_label_type.update_attributes(params[:hwm_label_type])
        format.html { redirect_to @hwm_label_type, notice: 'Hwm label type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hwm_label_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hwm_label_types/1
  # DELETE /hwm_label_types/1.json
  def destroy
    @hwm_label_type = HwmLabelType.find(params[:id])
    @hwm_label_type.destroy

    respond_to do |format|
      format.html { redirect_to hwm_label_types_url }
      format.json { head :no_content }
    end
  end
end
