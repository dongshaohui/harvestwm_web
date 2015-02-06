# encoding: utf-8
# author :Dong Shaohui
# description : 建立用户角色表
class HwmProduct < ActiveRecord::Base
  
  ## 产品model数据验证
  validates_presence_of :hwm_product_type_id,  :message => "产品类别不能为空!" # 产品类别不能为空
  
  ## 产品与用户账户建立关联
  has_many :hwm_user_account_hwm_products # 与关联表建立对应关系
  has_many :hwm_user_accounts, :through => :hwm_user_account_hwm_products # 与用户账户建立多对多关联
  
  ## 与产品类别建立关联（多对一）
  belongs_to :hwm_product_type # 与产品类别进行关联
  
end
