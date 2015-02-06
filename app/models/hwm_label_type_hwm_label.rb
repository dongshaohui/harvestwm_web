# encoding: utf-8
class HwmLabelTypeHwmLabel < ActiveRecord::Base
  belongs_to :hwm_label_type # 与标签类别的关系
  belongs_to :hwm_label #与标签的关系  
end
