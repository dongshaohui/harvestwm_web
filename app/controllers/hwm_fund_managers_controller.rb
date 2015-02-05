class HwmFundManagersController < ApplicationController
  # GET /hwm_fund_managers
  # GET /hwm_fund_managers.json
  def index
    @hwm_fund_managers = HwmFundManager.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hwm_fund_managers }
    end
  end

  # GET /hwm_fund_managers/1
  # GET /hwm_fund_managers/1.json
  def show
    @hwm_fund_manager = HwmFundManager.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hwm_fund_manager }
    end
  end

  # GET /hwm_fund_managers/new
  # GET /hwm_fund_managers/new.json
  def new
    @hwm_fund_manager = HwmFundManager.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hwm_fund_manager }
    end
  end

  # GET /hwm_fund_managers/1/edit
  def edit
    @hwm_fund_manager = HwmFundManager.find(params[:id])
  end

  # POST /hwm_fund_managers
  # POST /hwm_fund_managers.json
  def create
    @hwm_fund_manager = HwmFundManager.new(params[:hwm_fund_manager])

    respond_to do |format|
      if @hwm_fund_manager.save
        format.html { redirect_to @hwm_fund_manager, notice: 'Hwm fund manager was successfully created.' }
        format.json { render json: @hwm_fund_manager, status: :created, location: @hwm_fund_manager }
      else
        format.html { render action: "new" }
        format.json { render json: @hwm_fund_manager.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hwm_fund_managers/1
  # PUT /hwm_fund_managers/1.json
  def update
    @hwm_fund_manager = HwmFundManager.find(params[:id])

    respond_to do |format|
      if @hwm_fund_manager.update_attributes(params[:hwm_fund_manager])
        format.html { redirect_to @hwm_fund_manager, notice: 'Hwm fund manager was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hwm_fund_manager.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hwm_fund_managers/1
  # DELETE /hwm_fund_managers/1.json
  def destroy
    @hwm_fund_manager = HwmFundManager.find(params[:id])
    @hwm_fund_manager.destroy

    respond_to do |format|
      format.html { redirect_to hwm_fund_managers_url }
      format.json { head :no_content }
    end
  end
end
