class HwmUserDetailInfosController < ApplicationController
  # GET /hwm_user_detail_infos
  # GET /hwm_user_detail_infos.json
  def index
    @hwm_user_detail_infos = HwmUserDetailInfo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hwm_user_detail_infos }
    end
  end

  # GET /hwm_user_detail_infos/1
  # GET /hwm_user_detail_infos/1.json
  def show
    @hwm_user_detail_info = HwmUserDetailInfo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hwm_user_detail_info }
    end
  end

  # GET /hwm_user_detail_infos/new
  # GET /hwm_user_detail_infos/new.json
  def new
    @hwm_user_detail_info = HwmUserDetailInfo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hwm_user_detail_info }
    end
  end

  # GET /hwm_user_detail_infos/1/edit
  def edit
    @hwm_user_detail_info = HwmUserDetailInfo.find(params[:id])
  end

  # POST /hwm_user_detail_infos
  # POST /hwm_user_detail_infos.json
  def create
    @hwm_user_detail_info = HwmUserDetailInfo.new(params[:hwm_user_detail_info])

    respond_to do |format|
      if @hwm_user_detail_info.save
        format.html { redirect_to @hwm_user_detail_info, notice: 'Hwm user detail info was successfully created.' }
        format.json { render json: @hwm_user_detail_info, status: :created, location: @hwm_user_detail_info }
      else
        format.html { render action: "new" }
        format.json { render json: @hwm_user_detail_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hwm_user_detail_infos/1
  # PUT /hwm_user_detail_infos/1.json
  def update
    @hwm_user_detail_info = HwmUserDetailInfo.find(params[:id])

    respond_to do |format|
      if @hwm_user_detail_info.update_attributes(params[:hwm_user_detail_info])
        format.html { redirect_to @hwm_user_detail_info, notice: 'Hwm user detail info was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hwm_user_detail_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hwm_user_detail_infos/1
  # DELETE /hwm_user_detail_infos/1.json
  def destroy
    @hwm_user_detail_info = HwmUserDetailInfo.find(params[:id])
    @hwm_user_detail_info.destroy

    respond_to do |format|
      format.html { redirect_to hwm_user_detail_infos_url }
      format.json { head :no_content }
    end
  end
end
