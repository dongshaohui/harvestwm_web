# encoding: utf-8
# author :Dong Shaohui
# description : 链接资源model层
class HwmResourceLink < ActiveRecord::Base
  ## 校验层
  # 外链类型
  validates_presence_of :link_type, :message => "外链类型不能为空"
  validates_inclusion_of :link_type, :in => [0], :message => "外链类型格式不正确"
  
  # 外链来源类型
  validates_presence_of :source_type, :message => "外链来源类型不能为空"
  validates_inclusion_of :source_type, :in => [0,1], :message => "外链来源类型格式不正确"
  
  # 图片存放地址
  validates_presence_of :addr, :message => "外链地址不能为空"
  validates_uniqueness_of :addr, :message => "外链地址必须唯一"
  
  
  has_many :hwm_studio_hwm_resource_links # 与关联表关联关系
  has_many :hwm_studios ,:through => :hwm_studio_hwm_resource_links # 与工作室关联关系
end
