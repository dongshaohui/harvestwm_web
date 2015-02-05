class HwmCommentsController < ApplicationController
  # GET /hwm_comments
  # GET /hwm_comments.json
  def index
    @hwm_comments = HwmComment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hwm_comments }
    end
  end

  # GET /hwm_comments/1
  # GET /hwm_comments/1.json
  def show
    @hwm_comment = HwmComment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hwm_comment }
    end
  end

  # GET /hwm_comments/new
  # GET /hwm_comments/new.json
  def new
    @hwm_comment = HwmComment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hwm_comment }
    end
  end

  # GET /hwm_comments/1/edit
  def edit
    @hwm_comment = HwmComment.find(params[:id])
  end

  # POST /hwm_comments
  # POST /hwm_comments.json
  def create
    @hwm_comment = HwmComment.new(params[:hwm_comment])

    respond_to do |format|
      if @hwm_comment.save
        format.html { redirect_to @hwm_comment, notice: 'Hwm comment was successfully created.' }
        format.json { render json: @hwm_comment, status: :created, location: @hwm_comment }
      else
        format.html { render action: "new" }
        format.json { render json: @hwm_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hwm_comments/1
  # PUT /hwm_comments/1.json
  def update
    @hwm_comment = HwmComment.find(params[:id])

    respond_to do |format|
      if @hwm_comment.update_attributes(params[:hwm_comment])
        format.html { redirect_to @hwm_comment, notice: 'Hwm comment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hwm_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hwm_comments/1
  # DELETE /hwm_comments/1.json
  def destroy
    @hwm_comment = HwmComment.find(params[:id])
    @hwm_comment.destroy

    respond_to do |format|
      format.html { redirect_to hwm_comments_url }
      format.json { head :no_content }
    end
  end
end
