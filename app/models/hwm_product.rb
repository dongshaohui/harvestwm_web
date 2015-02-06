class HwmProduct < ActiveRecord::Base
  ## 产品与用户账户建立关联
  has_many :hwm_user_account_hwm_products # 与关联表建立对应关系
  has_many :hwm_user_accounts, :through => :hwm_user_account_hwm_products # 与用户账户建立多对多关联
end
