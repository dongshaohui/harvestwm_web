class CreateHwmUserAccounts < ActiveRecord::Migration
  def change
    create_table :hwm_user_accounts do |t|
      t.string :nickname, :null=>false
      t.string :realname
      t.string :certno
      t.string :certtype
      t.string :mobile, :null=>false
      t.string :email
      t.string :encrypt_pwd, :null=>false
      t.integer :hwm_studio_id

      t.timestamps
    end
	add_index :hwm_user_accounts, :mobile,:unique => true
	add_index :hwm_user_accounts, :nickname,:unique => true
  end
end
