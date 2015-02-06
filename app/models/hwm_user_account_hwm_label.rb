# encoding: utf-8
class HwmUserAccountHwmLabel < ActiveRecord::Base
  belongs_to :hwm_user_account # 与用户账户的关联
  belongs_to :hwm_label # 与标签的关联  
end
