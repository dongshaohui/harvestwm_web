# encoding: utf-8
class HwmLabelType < ActiveRecord::Base
  has_many :hwm_label_type_hwm_labels  #与关联表的对应关系
  has_many :hwm_labels ,:through => :hwm_label_type_hwm_labels #与标签的多对多关系
end
