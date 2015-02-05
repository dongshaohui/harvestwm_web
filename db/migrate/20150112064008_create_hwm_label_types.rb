class CreateHwmLabelTypes < ActiveRecord::Migration
  def change
    create_table :hwm_label_types do |t|
      t.string :label_type_content, :null=>false
      t.text :label_type_desc

      t.timestamps
    end
  end
end
