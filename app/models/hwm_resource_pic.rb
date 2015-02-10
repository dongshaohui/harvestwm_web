# encoding: utf-8
# author :Dong Shaohui
# description : 图片资源model层
class HwmResourcePic < ActiveRecord::Base
  ## 校验层  
  # 资源来源类型
  validates_presence_of :source_type, :message => "资源来源类型不能为空"
  validates_inclusion_of :source_type, :in => [0,1], :message => "资源来源类型错误!"
  
  # 图片存放地址
  validates_presence_of :addr, :message => "图片地址不能为空"
  validates_uniqueness_of :addr, :message => "图片地址必须唯一"
  
  has_many :hwm_studio_hwm_resource_pics # 与关联表的关联关系
  has_many :hwm_studios ,:through => :hwm_studio_hwm_resource_pics # 与工作室的关联关系
  
  has_many :hwm_user_account_hwm_resource_pics # 与关联表建立对应关系
  has_many :hwm_user_accounts, :through => :hwm_user_account_hwm_resource_pics # 与用户账户表建立多对多关系
end
