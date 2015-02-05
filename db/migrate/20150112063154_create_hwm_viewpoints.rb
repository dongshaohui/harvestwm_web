class CreateHwmViewpoints < ActiveRecord::Migration
  def change
    create_table :hwm_viewpoints do |t|
      t.integer :hwm_user_account_id, :null=>false
      t.text :title, :null=>false
      t.text :content, :null=>false
      t.integer :viewtimes, :null=>false

      t.timestamps
    end
  end
end
