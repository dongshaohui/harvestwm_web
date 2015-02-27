# encoding: utf-8
# author :Dong Shaohui
# description : 产品model层
class HwmProduct < ActiveRecord::Base
  
  ## 校验层
  # 产品类别
  validates_presence_of :hwm_product_type_id,  :message => "产品类别不能为空!" # 产品类别不能为空
  validates_numericality_of :hwm_product_type_id, :message => "产品类别id必须为数字"
  
  # 产品名称
  validates_presence_of :product_name, :message => "产品名称不能为空"
  validates_length_of :product_name, :in => 1..50, :message => "产品名称字数不在限制范围内"
  
  # 基金类型id
  validates_numericality_of :fund_type_id, :allow_nil => true, :message => "基金类型必须为数字"
  
  
  ## 产品与用户账户建立关联
  has_many :hwm_user_account_hwm_products # 与关联表建立对应关系,预约关系
  has_many :hwm_user_accounts, :through => :hwm_user_account_hwm_products # 与用户账户建立多对多关联
  
  ## 与产品类别建立关联（多对一）
  belongs_to :hwm_product_type # 与产品类别进行关联

  ## 与工作室建立关联
  belongs_to :hwm_studio # 与工作室建立关联
  
end
