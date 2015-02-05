class CreateHwmViewpointHwmLabels < ActiveRecord::Migration
  def change
    create_table :hwm_viewpoint_hwm_labels do |t|
      t.integer :hwm_viewpoint_id
      t.integer :hwm_label_id

      t.timestamps
    end
  end
end
