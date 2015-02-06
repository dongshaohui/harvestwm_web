# encoding: utf-8
# author :Dong Shaohui
# description : 用户账户model层
class HwmUserAccount < ActiveRecord::Base
  
  ## 数据校验层
  validates :nickname, :presence => { :message => "用户昵称不能为空!" },
  :uniqueness => { :message => "用户昵称不能重复!" },
  :length => {:minimum => 6 , :maximum => 30}     # 用户昵称校验
  
  validates_format_of :email, :with => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i,
  :allow_nil => true     # 验证邮箱格式
  
  validates :mobile, :presence => { :message => "用户手机号码不能为空!" }, 
  :uniqueness => { :message => "用户手机号码不能重复!" }  # 手机信息基本验证
  
  validates_format_of :mobile,
  :with => /1\d{10}/   # 验证手机格式
  
  
  
  ## 用户账户与标签建立联系
  has_many :hwm_user_account_hwm_labels # 与关联表建立对应关系
  has_many :hwm_labels, :through => :hwm_user_account_hwm_labels # 与标签表建立多对多关系
  
  ## 用户账户与图片建立关联
  has_many :hwm_user_account_hwm_resource_pics # 与关联表建立对应关系
  has_many :hwm_resource_pics , :through => :hwm_user_account_hwm_resource_pics # 与图片资源表建立多对多关系
  
  ## 用户账户与产品建立关联（多对多）
  has_many :hwm_user_account_hwm_products # 与关联表建立对应关系
  has_many :hwm_products ,:through => :hwm_user_account_hwm_products # 与产品建立多对多关系

  ## 用户账户与用户角色关联
  belongs_to :hwm_user_account_role
  
  
end
