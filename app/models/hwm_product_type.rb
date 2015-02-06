# encoding: utf-8
class HwmProductType < ActiveRecord::Base
  has_many :hwm_products # 与产品一对多关系
end
