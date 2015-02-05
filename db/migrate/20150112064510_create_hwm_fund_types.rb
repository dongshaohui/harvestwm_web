class CreateHwmFundTypes < ActiveRecord::Migration
  def change
    create_table :hwm_fund_types do |t|
      t.string :name, :null=>false
      t.text :desc

      t.timestamps
    end
  end
end
