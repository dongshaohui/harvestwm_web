# encoding: utf-8
# author :Dong Shaohui
# description : 用户表新增嘉实标识
class AddJsTagToHwmUserAccount < ActiveRecord::Migration
  def change
    add_column :hwm_user_accounts, :js_tag, :integer, :default => 0
  end
end
