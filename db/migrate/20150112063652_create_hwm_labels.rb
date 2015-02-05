class CreateHwmLabels < ActiveRecord::Migration
  def change
    create_table :hwm_labels do |t|
      t.string :label_content, :null=>false

      t.timestamps
    end
	add_index :hwm_labels, :label_content,:unique => true
  end
end
