class HwmProductsController < ApplicationController
  # GET /hwm_products
  # GET /hwm_products.json
  def index
    @hwm_products = HwmProduct.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hwm_products }
    end
  end

  # GET /hwm_products/1
  # GET /hwm_products/1.json
  def show
    @hwm_product = HwmProduct.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hwm_product }
    end
  end

  # GET /hwm_products/new
  # GET /hwm_products/new.json
  def new
    @hwm_product = HwmProduct.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hwm_product }
    end
  end

  # GET /hwm_products/1/edit
  def edit
    @hwm_product = HwmProduct.find(params[:id])
  end

  # POST /hwm_products
  # POST /hwm_products.json
  def create
    @hwm_product = HwmProduct.new(params[:hwm_product])

    respond_to do |format|
      if @hwm_product.save
        format.html { redirect_to @hwm_product, notice: 'Hwm product was successfully created.' }
        format.json { render json: @hwm_product, status: :created, location: @hwm_product }
      else
        format.html { render action: "new" }
        format.json { render json: @hwm_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hwm_products/1
  # PUT /hwm_products/1.json
  def update
    @hwm_product = HwmProduct.find(params[:id])

    respond_to do |format|
      if @hwm_product.update_attributes(params[:hwm_product])
        format.html { redirect_to @hwm_product, notice: 'Hwm product was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hwm_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hwm_products/1
  # DELETE /hwm_products/1.json
  def destroy
    @hwm_product = HwmProduct.find(params[:id])
    @hwm_product.destroy

    respond_to do |format|
      format.html { redirect_to hwm_products_url }
      format.json { head :no_content }
    end
  end
end
