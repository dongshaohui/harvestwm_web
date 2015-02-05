class CreateHwmUserAccountHwmResourcePics < ActiveRecord::Migration
  def change
    create_table :hwm_user_account_hwm_resource_pics do |t|
      t.integer :hwm_user_account_id
      t.integer :hwm_resource_pic_id

      t.timestamps
    end
  end
end
