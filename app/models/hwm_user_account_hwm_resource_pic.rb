class HwmUserAccountHwmResourcePic < ActiveRecord::Base
  belongs_to :hwm_user_account # 与用户账户的关联
  belongs_to :hwm_resource_pic # 与图片资源的关联    
end
