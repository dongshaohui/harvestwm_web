# encoding: utf-8
class HwmStudioHwmResourcePic < ActiveRecord::Base
  belongs_to :hwm_studio # 与工作室的关联
  belongs_to :hwm_resource_pic # 与图片的关联 
end
