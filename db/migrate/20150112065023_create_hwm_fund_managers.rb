class CreateHwmFundManagers < ActiveRecord::Migration
  def change
    create_table :hwm_fund_managers do |t|
      t.string :namea, :null=>false
      t.text :intro
      t.string :work_period
      t.string :expert_fund_type
      t.string :yearly_return
      t.string :max_profit
      t.string :max_retrace

      t.timestamps
    end
  end
end
