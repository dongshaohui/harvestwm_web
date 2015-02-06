class CreateHwmUserAccountHwmProducts < ActiveRecord::Migration
  def change
    create_table :hwm_user_account_hwm_products do |t|
      t.integer :hwm_user_account_id
      t.integer :hwm_product_id

      t.timestamps
    end
  end
end
