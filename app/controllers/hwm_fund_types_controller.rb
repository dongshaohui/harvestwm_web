class HwmFundTypesController < ApplicationController
  # GET /hwm_fund_types
  # GET /hwm_fund_types.json
  def index
    @hwm_fund_types = HwmFundType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hwm_fund_types }
    end
  end

  # GET /hwm_fund_types/1
  # GET /hwm_fund_types/1.json
  def show
    @hwm_fund_type = HwmFundType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hwm_fund_type }
    end
  end

  # GET /hwm_fund_types/new
  # GET /hwm_fund_types/new.json
  def new
    @hwm_fund_type = HwmFundType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hwm_fund_type }
    end
  end

  # GET /hwm_fund_types/1/edit
  def edit
    @hwm_fund_type = HwmFundType.find(params[:id])
  end

  # POST /hwm_fund_types
  # POST /hwm_fund_types.json
  def create
    @hwm_fund_type = HwmFundType.new(params[:hwm_fund_type])

    respond_to do |format|
      if @hwm_fund_type.save
        format.html { redirect_to @hwm_fund_type, notice: 'Hwm fund type was successfully created.' }
        format.json { render json: @hwm_fund_type, status: :created, location: @hwm_fund_type }
      else
        format.html { render action: "new" }
        format.json { render json: @hwm_fund_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hwm_fund_types/1
  # PUT /hwm_fund_types/1.json
  def update
    @hwm_fund_type = HwmFundType.find(params[:id])

    respond_to do |format|
      if @hwm_fund_type.update_attributes(params[:hwm_fund_type])
        format.html { redirect_to @hwm_fund_type, notice: 'Hwm fund type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hwm_fund_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hwm_fund_types/1
  # DELETE /hwm_fund_types/1.json
  def destroy
    @hwm_fund_type = HwmFundType.find(params[:id])
    @hwm_fund_type.destroy

    respond_to do |format|
      format.html { redirect_to hwm_fund_types_url }
      format.json { head :no_content }
    end
  end
end
