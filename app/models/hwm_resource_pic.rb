# encoding: utf-8
class HwmResourcePic < ActiveRecord::Base
  has_many :hwm_studio_hwm_resource_pics # 与关联表的关联关系
  has_many :hwm_studios ,:through => :hwm_studio_hwm_resource_pics # 与工作室的关联关系
  
  has_many :hwm_user_account_hwm_resource_pics # 与关联表建立对应关系
  has_many :hwm_user_accounts, :through => :hwm_user_account_hwm_resource_pics # 与用户账户表建立多对多关系
end
