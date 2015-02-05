class CreateHwmStudioHwmResourceLinks < ActiveRecord::Migration
  def change
    create_table :hwm_studio_hwm_resource_links do |t|
      t.integer :hwm_studio_id
      t.integer :hwm_resource_link_id

      t.timestamps
    end
  end
end
