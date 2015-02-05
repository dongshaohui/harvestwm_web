class CreateHwmStudioHwmResourcePics < ActiveRecord::Migration
  def change
    create_table :hwm_studio_hwm_resource_pics do |t|
      t.integer :hwm_studio_id
      t.integer :hwm_resource_pic_id

      t.timestamps
    end
  end
end
