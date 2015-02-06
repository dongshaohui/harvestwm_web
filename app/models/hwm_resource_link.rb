# encoding: utf-8
class HwmResourceLink < ActiveRecord::Base
  has_many :hwm_studio_hwm_resource_links # 与关联表关联关系
  has_many :hwm_studios ,:through => :hwm_studio_hwm_resource_links # 与工作室关联关系
end
