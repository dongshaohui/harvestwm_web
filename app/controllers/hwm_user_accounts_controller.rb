class HwmUserAccountsController < ApplicationController
  # GET /hwm_user_accounts
  # GET /hwm_user_accounts.json
  def index
    ## 获取参数
    @user_type = params[:type].to_i # 0为投资者，1为投资顾问
    @pagenum = params[:pagenum].to_i # 获取分页数
    @addr = params[:addr].to_s # 获取城市
    @tag = params[:tag].to_s # 标签
    @name = params[:name].to_s # 顾客姓名
    # 提交给view的参数，包含城市列表、标签列表、投顾信息列表
    @citylist = fetch_city_list_of_consultant   # 获取投顾所在城市列表
    @taglist = fetch_tag_list_of_consultant # 获取投顾标签列表
    @hwm_consultant_info_list = fetch_consultant_detail_info_list @pagenum == 0 ? 1:@pagenum , @addr, @tag, @name
    
    # 分别渲染不同视图
    if @user_type == 1  
      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @hwm_user_accounts }
      end
    else
      render "investor"
    end

  end

  # GET /hwm_user_accounts/1
  # GET /hwm_user_accounts/1.json
  def show
    @hwm_user_account = HwmUserAccount.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hwm_user_account }
    end
  end

  # GET /hwm_user_accounts/new
  # GET /hwm_user_accounts/new.json
  # 用户注册页面
  def new
    @hwm_user_account = HwmUserAccount.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hwm_user_account }
    end
  end

  # GET /hwm_user_accounts/1/edit
  def edit
    @hwm_user_account = HwmUserAccount.find(params[:id])
  end

  # 用户注册action, 同时保存用户session信息
  def create
    @hwm_user_account = HwmUserAccount.new(params[:hwm_user_account])
    # 对用户密码进行md5加密
    require 'digest/md5'
    @hwm_user_account.encrypt_pwd =  Digest::MD5.hexdigest(@hwm_user_account.password)
    @vericode = params[:vericode]
    validate_result = validatecode @hwm_user_account.mobile @vericode
    

    
    respond_to do |format|
      if @hwm_user_account.save
        session[:hwm_user_account_id] = @hwm_user_account.id 
        session[:hwm_user_account_time] = Time.now
        format.html { redirect_to @hwm_user_account, notice: 'Hwm user account was successfully created.' }
        format.json { render json: @hwm_user_account, status: :created, location: @hwm_user_account }
      else

        format.html { render action: "new" }
        format.json { render json: @hwm_user_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hwm_user_accounts/1
  # PUT /hwm_user_accounts/1.json
  def update
    @hwm_user_account = HwmUserAccount.find(params[:id])

    respond_to do |format|
      if @hwm_user_account.update_attributes(params[:hwm_user_account])
        format.html { redirect_to @hwm_user_account, notice: 'Hwm user account was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hwm_user_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hwm_user_accounts/1
  # DELETE /hwm_user_accounts/1.json
  def destroy
    @hwm_user_account = HwmUserAccount.find(params[:id])
    @hwm_user_account.destroy

    respond_to do |format|
      format.html { redirect_to hwm_user_accounts_url }
      format.json { head :no_content }
    end
  end
  
  # 获取手机验证码(使用ajax方式发送)
  def getvercode
    mobile_message_base_url = "https://trade.jsfund.cn/etrading/hiswemobile/hiswemobileservice.jsp"
    mobile = params[:mobile]
    # 获取手机验证码，发送短信给手机，使用嘉实基金网关
    sms_request_url = mobile_message_base_url + "?cmd=sendsmscode&udid=anyudid&mobile=" + mobile + "&busintyp=1"

    # 发送验证码get请求
    require "open-uri"
    #如果有GET请求参数直接写在URI地址中
    html_response = nil
    open(sms_request_url) do |http|
      html_response = http.read
    end
    puts html_response    
  end
  
  protected
  
  # 验证手机验证码是否正确
  def validatecode(mobile,mobile_valicode)
    mobile_message_base_url = "https://trade.jsfund.cn/etrading/hiswemobile/hiswemobileservice.jsp"    
    mobile = params[:mobile]
    mobile_valicode = params[:validatecode]
    sms_validate_req_url = mobile_message_base_url + "?cmd=validatesmscode&udid=anyudid&mobile=" + mobile + "&validatecode=" + mobile_valicode

    #如果有GET请求参数直接写在URI地址中
    html_response = nil
    open(sms_validate_req_url) do |http|
      html_response = http.read
    end
    require 'json'
    sms_response = JSON.parse(html_response)
    smsResCode = sms_response['resCode'].to_i
    if smsResCode == 1000
      puts "right validate code"
      return true
    else
      puts "wrong validate code"
      return false
    end    
  end
  
  def user_account_session_expire
    if session[:hwm_user_account_id] == nil
      return 0
    end
    @user_account_session_time_left = (session[:hwm_user_account_time] - Time.now).to_i
    return @user_account_session_time_left
  end  
    
  # 获取投顾列表
  def consultantlist
    # 列表页面返回所在城市列表、擅长领域列表、投资顾问列表以及对应的标签列表
      @hwm_user_accounts = HwmUserAccount.all
  end
  
  
  private 
  # 获取所有投顾的所在城市列表
  def fetch_city_list_of_consultant
      @hwm_user_accounts = HwmUserAccount.where(["hwm_user_account_role_id > 0",0])
      @citylist = []
      @hwm_user_accounts.each do |hwm_user_account|
        @citylist << hwm_user_account.hwm_user_detail_info.city
      end
      return @citylist.uniq # 城市地名去重
  end
  
  # 获取所有投顾标签列表
  def fetch_tag_list_of_consultant
    @hwm_user_accounts = HwmUserAccount.where(["hwm_user_account_role_id > 0",0])
    @taglist = []
    @hwm_user_accounts.each do |hwm_user_account|
      @tags = hwm_user_account.hwm_labels
      @tags.each do |tag|
        @taglist << tag.label_content
      end
    end
    return @taglist.uniq
  end
  
  # 获取投资顾问详情信息
  def fetch_consultant_detail_info_list(pagenum,addr,tag,name)
    # 参数标准化
    addr = addr == "" ? nil:addr
    tag = tag == "" ? nil:tag
    name = name == "" ? nil:name
    
    # 分页策略
    dis_unit = 8
    page_front = (pagenum - 1) * dis_unit
    page_end = pagenum * dis_unit - 1  
    @hwm_consultant_info_list = []
    # 获取投资顾问列表
    @hwm_user_accounts = HwmUserAccount.where(["hwm_user_account_role_id > ?",0])[page_front..page_end]
    
    if @hwm_user_accounts != nil
      @hwm_user_accounts.each do |hwm_user_account|
        advanceinfo = hwm_user_account.hwm_user_detail_info
        taglist = hwm_user_account.hwm_labels
        ## 筛选逻辑
        if addr != nil and addr != advanceinfo.city  ## 按照城市筛选
          next
        end
        
        if tag != nil and label_exist_in_taglist(tag,taglist) == false ## 按照标签筛选
          next
        end
        
        if name != nil and name != advanceinfo.realname ## 按照姓名筛选
          next
        end
        ## 筛选逻辑结束 
        consultant_info_obj = Hwm_consultant_info.new(hwm_user_account,advanceinfo,taglist)
        @hwm_consultant_info_list << consultant_info_obj
        
      end
    else
      puts "对象分页超出限制!"
    end
    @hwm_consultant_info_list
  end
  
  ## 判断标签是否在标签列表中
  def label_exist_in_taglist(label,taglist)
    @exist_result = false
    taglist.each do |tag|
      if tag.label_content == label
        @exist_result = true
        break
      end 
    end
    @exist_result
  end
  
  ## 投资顾问卡片详情
  class Hwm_consultant_info
    def initialize(userinfo,advanceinfo,taglist)
      @userinfo = userinfo
      @advanceinfo = advanceinfo
      @taglist = taglist
    end
    
    ## get方法
    def userinfo
      @userinfo
    end
    
    def advanceinfo
      @advanceinfo
    end
    
    def taglist
      @taglist
    end
    
  end
  
end
