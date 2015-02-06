# encoding: utf-8
# author :Dong Shaohui
# description : 建立用户角色表
class CreateHwmUserAccountRoles < ActiveRecord::Migration
  def change
    create_table :hwm_user_account_roles do |t|
      t.string :hwm_user_account_type
      t.string :hwm_user_account_role_desc

      t.timestamps
    end
    add_index :hwm_user_account_roles, :hwm_user_account_type,:unique => true
  end
end
