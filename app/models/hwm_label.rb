# encoding: utf-8
class HwmLabel < ActiveRecord::Base
  #### 标签与观点多对多关系 ####
  has_many :hwm_viewpoint_hwm_labels # 与关联表的对应关系
  has_many :hwm_viewpoints , :through => :hwm_viewpoint_hwm_labels # 与观点的多对多关系
  ###########################
  
  #### 标签与标签类别多对多关系 ####  
  has_many :hwm_label_type_hwm_labels  # 与关联表的对应关系
  has_many :hwm_label_types , :through => :hwm_label_type_hwm_labels #与标签类别表的多对多关系
  ##############################
  
  #### 标签与用户账户多对多关系 ####  
  has_many :hwm_user_account_hwm_labels # 与关联表建立对应关系
  has_many :hwm_user_accounts, :through => :hwm_user_account_hwm_labels # 与用户账户表建立多对多关系  
  ##############################    
end
