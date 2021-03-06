# encoding: utf-8
# author :Dong Shaohui
# description : 观点model层
class HwmViewpoint < ActiveRecord::Base
  ## 数据校验层
  # 浏览次数校验
  validates_numericality_of :viewtimes, :allow_nil => true, :message => "浏览次数必须为整数"
  
  # 关联层
  has_many :hwm_viewpoint_hwm_labels  # 与关联表的对应关系
  has_many :hwm_labels , :through => :hwm_viewpoint_hwm_labels #与标签的一对多关系
  
  
  # 按照标签搜索观点
  def self.find_viewpoints_by_label
    # find(:all,)
  end
  
  # 按照创建时间进行排序
  def self.find_viewpoints_by_time_sort
    find(:all,:order=>"createed_at")
  end
  
  # 按照热度进行排序（浏览次数降序）
  def self.find_viewpoints_by_viewtimes
    find(:all,:order=>"viewtimes desc")
  end
  
  # 
  
end
