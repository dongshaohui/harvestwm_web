# encoding: utf-8
# author :Dong Shaohui
# description : 工作室model层
class HwmStudio < ActiveRecord::Base
  
  ## 校验层
  # 工作室所有者不能为空，每个人最多只能开一家工作室
  validates_presence_of :hwm_user_account_id, :message => "工作室所有者id不能为空!"
  validates_uniqueness_of :hwm_user_account_id, :message => "工作室所有者不能重复!"
  
  # 工作室认证类型(0-认证,1-非认证)
  validates_presence_of :auth_type, :message => "工作室认证类型不能为空!"
  validates_inclusion_of :auth_type, :in => [0,1], :message => "工作室认证类型错误!"
  
  # 工作室标志类型(0-个人,1-机构)
  validates_presence_of :tag, :message => "工作室标志类型不能为空!"
  validates_inclusion_of :tag, :in => [0,1], :message => "工作室标志类型错误!"
  
  # 工作室名称
  validates_presence_of :studioname, :message => "工作室名称不能为空!"
  validates_uniqueness_of :studioname, :message => "工作室名称不能重复!"
  validates_length_of :studioname, :in => 6..30, :message => "工作室名称超出字数限制(6-30个字)"
  
  # 工作室地址
  validates_presence_of :country, :message => "工作室所在国家不能为空!"
  validates_presence_of :province, :message => "工作室所在省份不能为空!"
  validates_presence_of :city, :message => "工作室所在城市不能为空!"
  validates_presence_of :district, :message => "工作室所在街区不能为空!"
  validates_presence_of :address, :message => "工作室所在地址不能为空!"  
  
  validates_length_of :country, :in => 1..30, :message => "工作室国家超出字数限制(1-30个字)"
  validates_length_of :province, :in => 1..30, :message => "工作室省份超出字数限制(1-30个字)"
  validates_length_of :city, :in => 1..30, :message => "工作室城市超出字数限制(1-30个字)"
  validates_length_of :district, :in => 1..50, :message => "工作室街区超出字数限制(1-50个字)"
  validates_length_of :address, :in => 1..200, :message => "工作室地址超出字数限制(1-200个字)"
  
  # 工作室电话
  validates_presence_of :tel, :message => "工作室电话不能为空"
  validates_uniqueness_of :tel, :message => "工作室电话不能重复"
  validates_format_of :tel, :with => /\d+\-?\d*/ , :message => "工作室电话格式不正确(***-*******)"
  
  # 工作室邮箱
  validates_format_of :email, :with => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i,
  :allow_nil => true     # 验证邮箱格式
  
  # 审核状态验证
  validates_presence_of :verify_state, :message => "审核状态不能为空"
  validates_inclusion_of :verify_state, :in => [0,1,2,3], :message => "审核状态类型错误!"  
  
  
  
  has_many :hwm_studio_hwm_resource_links # 与关联表关联关系
  has_many :hwm_resource_links, :through => :hwm_studio_hwm_resource_links # 与外部资源链接关联关系
  
  has_many :hwm_studio_hwm_resource_pics # 与关联表关联关系
  has_many :hwm_resource_pics, :through => :hwm_studio_hwm_resource_pics # 与图片关联关系
  
  ## 与用户进行关联
  has_many :hwm_user_accounts 
  
end