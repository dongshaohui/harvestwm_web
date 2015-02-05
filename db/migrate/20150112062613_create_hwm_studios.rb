class CreateHwmStudios < ActiveRecord::Migration
  def change
    create_table :hwm_studios do |t|
      t.integer :hwm_user_account_id, :null=>false
      t.integer :auth_type, :null=>false
      t.integer :tag, :null=>false
      t.string :industry
      t.string :nature
      t.string :studioname, :null=>false
      t.string :studio_intro
      t.text :studio_desc
      t.string :country, :null=>false
      t.string :province, :null=>false
      t.string :city, :null=>false
      t.string :district, :null=>false
      t.text :address, :null=>false
      t.string :tel, :null=>false
      t.string :email
      t.string :fax
      t.string :corp_repr
      t.string :share_holder
      t.integer :employee_number
      t.string :reg_no
      t.string :reg_addr
      t.date :establish_date
      t.date :due_date
      t.string :organize_code
      t.string :tax_reg_cert
      t.integer :verify_state, :null=>false
      t.text :verify_reason

      t.timestamps
    end
	add_index :hwm_studios, :hwm_user_account_id,:unique => true
	add_index :hwm_studios, :studioname,:unique => true
  end
end
