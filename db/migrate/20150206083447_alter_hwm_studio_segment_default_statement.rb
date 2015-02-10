# encoding: utf-8
# author :Dong Shaohui
# description : 修改工作室一些预设值状态
class AlterHwmStudioSegmentDefaultStatement < ActiveRecord::Migration
  def up
    change_column :hwm_studios, :auth_type, :integer, :default => 1 # 默认为非认证工作室
    change_column :hwm_studios, :tag, :integer, :default => 0 # 默认为个人工作室
    change_column :hwm_studios, :verify_state, :integer, :default => 3 # 默认状态为未审核
  end
  def down
    change_column :hwm_studios, :verify_state, :integer
    change_column :hwm_studios, :tag, :integer
    change_column :hwm_studios, :auth_type, :integer
  end
end
