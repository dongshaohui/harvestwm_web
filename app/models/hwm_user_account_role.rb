# encoding: utf-8
# author :Dong Shaohui
# description : 用户角色model层
class HwmUserAccountRole < ActiveRecord::Base
  
  ## 校验层
  validates_presence_of :hwm_user_account_type, :message => "用户账户类型不可以为空!"
  validates_uniqueness_of :hwm_user_account_type, :message => "用户账户类型不可以重复!"
  
  
  ## 与用户账户表进行关联
  has_many :hwm_user_accounts
end
