class CreateHwmUserDetailInfos < ActiveRecord::Migration
  def change
    create_table :hwm_user_detail_infos do |t|
      t.integer :hwm_user_account_id, :null=>false
      t.string :social_account
      t.string :recommender
      t.integer :recommender_type
      t.date :cert_valid_date
      t.string :nationality
      t.string :province
      t.string :city
      t.string :district
      t.string :address
      t.string :postcode
      t.string :tel
      t.string :fax
      t.string :interest
      t.boolean :sex
      t.integer :marriage
      t.integer :education
      t.string :workunit
      t.integer :occupation_code
      t.float :income
      t.integer :population
      t.float :asset
      t.string :application_number
      t.date :transaction_date
      t.datetime :transaction_time
      t.string :transaction_account
      t.integer :transaction_channel
      t.integer :send_bill_choice
      t.integer :send_bill_type
      t.string :sail_code
      t.string :business_code
      t.string :network_code
      t.integer :custom_risk_level
      t.text :self_intro
      t.text :edu_background
      t.text :certificate
      t.text :work_intro
      t.text :case_intro

      t.timestamps
    end
	add_index :hwm_user_detail_infos , :hwm_user_account_id,:unique => true
  end
end
