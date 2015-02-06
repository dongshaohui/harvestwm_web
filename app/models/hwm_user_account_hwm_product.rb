class HwmUserAccountHwmProduct < ActiveRecord::Base
  belongs_to :hwm_user_account # 与用户账户的关联
  belongs_to :hwm_product # 与产品的关联
end
