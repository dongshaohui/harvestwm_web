# encoding: utf-8
class HwmStudio < ActiveRecord::Base
  has_many :hwm_studio_hwm_resource_links # 与关联表关联关系
  has_many :hwm_resource_links ,:through => :hwm_studio_hwm_resource_links # 与外部资源链接关联关系
  
  has_many :hwm_studio_hwm_resource_pics # 与关联表关联关系
  has_many :hwm_resource_pics ,:through => :hwm_studio_hwm_resource_pics # 与图片关联关系
  
end