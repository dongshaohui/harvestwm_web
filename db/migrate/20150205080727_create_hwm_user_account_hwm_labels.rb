class CreateHwmUserAccountHwmLabels < ActiveRecord::Migration
  def change
    create_table :hwm_user_account_hwm_labels do |t|
      t.integer :hwm_user_account_id
      t.integer :hwm_label_id

      t.timestamps
    end
  end
end
