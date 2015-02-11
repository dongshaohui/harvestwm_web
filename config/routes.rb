HarvestwmWeb::Application.routes.draw do
    
  #################################### 网站路由结构 ######################################################
  resources :hwm_fund_managers
  resources :hwm_management_organizations
  resources :hwm_fund_values
  resources :hwm_fund_types
  resources :hwm_product_types
  resources :hwm_products
  resources :hwm_label_types
  resources :hwm_labels
  resources :hwm_comments
  resources :hwm_viewpoints
  resources :hwm_user_detail_infos
  resources :hwm_studios
  resources :hwm_resource_links
  resources :hwm_resource_pics
  resources :hwm_user_accounts
  
  
  ######## 一、用户模块 ##########
  # 获取用户验证码
  get "hwm_user_account/:mobile/getvercode" => "hwm_user_accounts#getvercode", :as=>"user_mobile_vercode"
  # 校验用户验证码是否正确
  get "hwm_user_account/:mobile/validatecode/:validatecode" => "hwm_user_accounts#validatecode" ,:as=>"user_mobile_validatecode"
  
  
  ######## 二、顾问模块 ##########
  
  # 投资顾问列表页面
  match "hwm_user_account/consultantlist" => "hwm_user_accounts#consultantlist"
  ######## 三、工作室模块 ##########
  
  ######## 四、我的工作室模块 ##########
  
  ######## 五、服务模块 ##########
  
  ######## 六、观点模块 ##########
  
  ######## 七、个人账户模块 ##########  
  
  ######## 八、产品模块 ##########    
  
######################################################################################################



end
