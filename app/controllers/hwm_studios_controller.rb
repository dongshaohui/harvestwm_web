class HwmStudiosController < ApplicationController
  # GET /hwm_studios
  # GET /hwm_studios.json
  def index
    ## 获取参数
    @pagenum = params[:pagenum].to_i # 获取分页数
    @addr = params[:addr].to_s # 获取城市
    @js_tag = params[:js_tag].to_i # 是否为嘉实投资顾问的标志 
    
    ## 参数标准化
    if @pagenum <= 0
      @pagenum = 1
    end
    
    ## 获取展示信息
    studio_number_per_page = 3 # 每页的工作室数目  
    @citylist = fetch_city_list_of_studio ## 获取工作室所在城市列表
    @total_page_num = fetch_total_page_number studio_number_per_page ## 获取pagenum总数
    @hwm_studios =  fetch_compatible_studio_list addr,js_tag # 按照筛选条件获取工作室列表
    @hwm_studios = fetch_studio_list @hwm_studios,@pagenum,studio_number_per_page ## 根据分页获取展示的工作室列表
    
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
    @product_list = @hwm_studio.hwm_products ## 工作室关联的产品列表

    
    
    
    
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
  
  private 
  # 获取所有工作室的所在城市列表
  def fetch_city_list_of_studio
    @hwm_studios = HwmStudio.all
    @citylist = []
    @hwm_studios.each do |hwm_studio|
      @citylist << hwm_studio.city
    end
    return @citylist.uniq # 城市地名去重
  end

  # 获取页数
  def fetch_total_page_number(studios_per_page)
    studio_size = HwmStudio.all.size
    pagenum = studio_size / studios_per_page
    if studio_size % studios_per_page != 0
      pagenum = pagenum + 1
    end
    return pagenum 
  end
  
  # 按照筛选条件来筛选工作室列表
  def fetch_compatible_studio_list(addr,js_tag)
    return HwmStudio.where(["city = ? and tag = ?",addr,js_tag]) ## tag的意义: 0-非嘉实工作室,1-嘉实工作室
  end
  
  # 获取展示的工作室列表
  def fetch_studio_list(hwm_studios,page_num,studios_per_page)
    start_index = (page_num - 1) * studios_per_page
    end_index = page_num * studios_per_page - 1
    return hwm_studios[start_index..end_index]
  end
  
end
