class HwmLabelsController < ApplicationController
  # GET /hwm_labels
  # GET /hwm_labels.json
  def index
    @hwm_labels = HwmLabel.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hwm_labels }
    end
  end

  # GET /hwm_labels/1
  # GET /hwm_labels/1.json
  def show
    @hwm_label = HwmLabel.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hwm_label }
    end
  end

  # GET /hwm_labels/new
  # GET /hwm_labels/new.json
  def new
    @hwm_label = HwmLabel.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hwm_label }
    end
  end

  # GET /hwm_labels/1/edit
  def edit
    @hwm_label = HwmLabel.find(params[:id])
  end

  # POST /hwm_labels
  # POST /hwm_labels.json
  def create
    @hwm_label = HwmLabel.new(params[:hwm_label])

    respond_to do |format|
      if @hwm_label.save
        format.html { redirect_to @hwm_label, notice: 'Hwm label was successfully created.' }
        format.json { render json: @hwm_label, status: :created, location: @hwm_label }
      else
        format.html { render action: "new" }
        format.json { render json: @hwm_label.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hwm_labels/1
  # PUT /hwm_labels/1.json
  def update
    @hwm_label = HwmLabel.find(params[:id])

    respond_to do |format|
      if @hwm_label.update_attributes(params[:hwm_label])
        format.html { redirect_to @hwm_label, notice: 'Hwm label was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hwm_label.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hwm_labels/1
  # DELETE /hwm_labels/1.json
  def destroy
    @hwm_label = HwmLabel.find(params[:id])
    @hwm_label.destroy

    respond_to do |format|
      format.html { redirect_to hwm_labels_url }
      format.json { head :no_content }
    end
  end
end
