class HwmUserAccount < ActiveRecord::Base
  
  ## 用户账户与标签建立联系
  has_many :hwm_user_account_hwm_labels # 与关联表建立对应关系
  has_many :hwm_labels, :through => :hwm_user_account_hwm_labels # 与用户账户表建立多对多关系
  
  ## 用户账户与图片建立关联

  
end
