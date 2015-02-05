class CreateHwmResourceLinks < ActiveRecord::Migration
  def change
    create_table :hwm_resource_links do |t|
      t.integer :link_type, :null=>false
      t.integer :source_type, :null=>false
      t.string :addr, :null=>false

      t.timestamps
    end
	add_index :hwm_resource_links , :addr,:unique => true
  end
end
