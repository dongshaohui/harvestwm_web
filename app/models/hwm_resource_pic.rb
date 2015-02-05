class HwmResourcePic < ActiveRecord::Base
  has_many :hwm_studio_hwm_resource_pics # 与关联表的关联关系
  has_many :hwm_studios ,:through => :hwm_studio_hwm_resource_pics # 与工作室的关联关系
end
