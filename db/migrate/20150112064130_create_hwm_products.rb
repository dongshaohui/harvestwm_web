class CreateHwmProducts < ActiveRecord::Migration
  def change
    create_table :hwm_products do |t|
      t.integer :product_type_id, :null=>false
      t.integer :fund_type_id
      t.string :product_name, :null=>false
      t.date :start_date
      t.date :end_date
      t.string :due_time
      t.integer :risk_level
      t.string :risk_control
      t.integer :state
      t.date :establish_date
      t.string :manage_fee
      t.string :custody_fee
      t.string :subscribe_fee
      t.string :redeem_fee
      t.string :custody_bank
      t.string :expect_profit
      t.text :profit_desc
      t.string :raise_size
      t.string :init_capital
      t.text :recommend_reason
      t.string :investment
      t.string :repay_source
      t.string :financer
      t.text :financer_desc

      t.timestamps
    end
  end
end
