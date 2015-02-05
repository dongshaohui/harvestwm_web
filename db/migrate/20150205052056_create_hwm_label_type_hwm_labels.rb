class CreateHwmLabelTypeHwmLabels < ActiveRecord::Migration
  def change
    create_table :hwm_label_type_hwm_labels do |t|
      t.integer :hwm_label_type_id
      t.integer :hwm_label_id

      t.timestamps
    end
  end
end
