class CreateHwmComments < ActiveRecord::Migration
  def change
    create_table :hwm_comments do |t|
      t.integer :hwm_viewpoint_id, :null=>false
      t.integer :hwm_user_account_id, :null=>false
      t.text :comment_content, :null=>false

      t.timestamps
    end
  end
end
