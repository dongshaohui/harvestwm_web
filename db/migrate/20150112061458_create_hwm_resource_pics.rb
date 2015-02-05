class CreateHwmResourcePics < ActiveRecord::Migration
  def change
    create_table :hwm_resource_pics do |t|
      t.integer :source_type, :null=>false
      t.string :addr, :null=>false

      t.timestamps
    end
	add_index :hwm_resource_pics, :addr,:unique => true
  end
end
