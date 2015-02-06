# encoding: utf-8
# author :Dong Shaohui
# description : 对用户账户表新增用户角色类型id
class AddHwmUserAccountRoleIdToUserAccount < ActiveRecord::Migration
  def change
    add_column :hwm_user_accounts, :hwm_user_account_role_id, :integer
  end
end
