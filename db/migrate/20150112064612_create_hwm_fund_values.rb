class CreateHwmFundValues < ActiveRecord::Migration
  def change
    create_table :hwm_fund_values do |t|
      t.integer :hwm_product_id, :null=>false
      t.string :fundcode
      t.string :unit_value
      t.string :accu_value
      t.string :day_change
      t.date :trade_date

      t.timestamps
    end
	add_index :hwm_fund_values, :hwm_product_id,:unique => true 
  end
end
