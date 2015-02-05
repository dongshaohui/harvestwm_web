# 观点与标签的关联表
class HwmViewpointHwmLabel < ActiveRecord::Base
  belongs_to :hwm_viewpoint # 与观点的关系
  belongs_to :hwm_label #与标签的关系
end
