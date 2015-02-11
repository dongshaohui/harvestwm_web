# encoding: utf-8
# author :Dong Shaohui
# description : 标签类别model层
class HwmLabelType < ActiveRecord::Base
  
  # 标签类别
  validates_presence_of :label_type_content, :message => "标签类别内容不能为空"
  validates_uniqueness_of :label_type_content, :message => "标签类别内容不能重复"
  
  
  has_many :hwm_label_type_hwm_labels  #与关联表的对应关系
  has_many :hwm_labels ,:through => :hwm_label_type_hwm_labels #与标签的多对多关系
end
