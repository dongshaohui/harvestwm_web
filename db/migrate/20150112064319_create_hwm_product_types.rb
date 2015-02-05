class CreateHwmProductTypes < ActiveRecord::Migration
  def change
    create_table :hwm_product_types do |t|
      t.string :name, :null=>false
      t.text :desc

      t.timestamps
    end
  end
end
