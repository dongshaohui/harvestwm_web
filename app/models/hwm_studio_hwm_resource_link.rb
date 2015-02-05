class HwmStudioHwmResourceLink < ActiveRecord::Base
  belongs_to :hwm_studio # 与工作室的关联
  belongs_to :hwm_resource_link # 与外部资源的关联
end
