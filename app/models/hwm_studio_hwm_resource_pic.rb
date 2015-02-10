# encoding: utf-8
# author :Dong Shaohui
# description : 工作室和图片资源关联表
class HwmStudioHwmResourcePic < ActiveRecord::Base
  belongs_to :hwm_studio # 与工作室的关联
  belongs_to :hwm_resource_pic # 与图片的关联
end