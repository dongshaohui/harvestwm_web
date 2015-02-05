class HwmFundValuesController < ApplicationController
  # GET /hwm_fund_values
  # GET /hwm_fund_values.json
  def index
    @hwm_fund_values = HwmFundValue.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hwm_fund_values }
    end
  end

  # GET /hwm_fund_values/1
  # GET /hwm_fund_values/1.json
  def show
    @hwm_fund_value = HwmFundValue.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hwm_fund_value }
    end
  end

  # GET /hwm_fund_values/new
  # GET /hwm_fund_values/new.json
  def new
    @hwm_fund_value = HwmFundValue.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hwm_fund_value }
    end
  end

  # GET /hwm_fund_values/1/edit
  def edit
    @hwm_fund_value = HwmFundValue.find(params[:id])
  end

  # POST /hwm_fund_values
  # POST /hwm_fund_values.json
  def create
    @hwm_fund_value = HwmFundValue.new(params[:hwm_fund_value])

    respond_to do |format|
      if @hwm_fund_value.save
        format.html { redirect_to @hwm_fund_value, notice: 'Hwm fund value was successfully created.' }
        format.json { render json: @hwm_fund_value, status: :created, location: @hwm_fund_value }
      else
        format.html { render action: "new" }
        format.json { render json: @hwm_fund_value.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hwm_fund_values/1
  # PUT /hwm_fund_values/1.json
  def update
    @hwm_fund_value = HwmFundValue.find(params[:id])

    respond_to do |format|
      if @hwm_fund_value.update_attributes(params[:hwm_fund_value])
        format.html { redirect_to @hwm_fund_value, notice: 'Hwm fund value was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hwm_fund_value.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hwm_fund_values/1
  # DELETE /hwm_fund_values/1.json
  def destroy
    @hwm_fund_value = HwmFundValue.find(params[:id])
    @hwm_fund_value.destroy

    respond_to do |format|
      format.html { redirect_to hwm_fund_values_url }
      format.json { head :no_content }
    end
  end
end
