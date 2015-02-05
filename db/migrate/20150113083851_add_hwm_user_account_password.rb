class AddHwmUserAccountPassword < ActiveRecord::Migration
  def change
     add_column :hwm_user_accounts, :password, :string
  end

end
