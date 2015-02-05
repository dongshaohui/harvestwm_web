# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20150205080727) do

  create_table "hwm_comments", :force => true do |t|
    t.integer  "hwm_viewpoint_id",    :null => false
    t.integer  "hwm_user_account_id", :null => false
    t.text     "comment_content",     :null => false
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "hwm_fund_managers", :force => true do |t|
    t.string   "namea",            :null => false
    t.text     "intro"
    t.string   "work_period"
    t.string   "expert_fund_type"
    t.string   "yearly_return"
    t.string   "max_profit"
    t.string   "max_retrace"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "hwm_fund_types", :force => true do |t|
    t.string   "name",       :null => false
    t.text     "desc"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "hwm_fund_values", :force => true do |t|
    t.integer  "hwm_product_id", :null => false
    t.string   "fundcode"
    t.string   "unit_value"
    t.string   "accu_value"
    t.string   "day_change"
    t.date     "trade_date"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "hwm_fund_values", ["hwm_product_id"], :name => "index_hwm_fund_values_on_hwm_product_id", :unique => true

  create_table "hwm_label_type_hwm_labels", :force => true do |t|
    t.integer  "hwm_label_type_id"
    t.integer  "hwm_label_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "hwm_label_types", :force => true do |t|
    t.string   "label_type_content", :null => false
    t.text     "label_type_desc"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "hwm_labels", :force => true do |t|
    t.string   "label_content", :null => false
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "hwm_labels", ["label_content"], :name => "index_hwm_labels_on_label_content", :unique => true

  create_table "hwm_management_organizations", :force => true do |t|
    t.string   "cnname",       :null => false
    t.string   "enname"
    t.string   "short_name"
    t.string   "capital"
    t.string   "legal_repr"
    t.string   "nature"
    t.date     "found_date"
    t.string   "invest_field"
    t.text     "desc"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "hwm_product_types", :force => true do |t|
    t.string   "name",       :null => false
    t.text     "desc"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "hwm_products", :force => true do |t|
    t.integer  "product_type_id",  :null => false
    t.integer  "fund_type_id"
    t.string   "product_name",     :null => false
    t.date     "start_date"
    t.date     "end_date"
    t.string   "due_time"
    t.integer  "risk_level"
    t.string   "risk_control"
    t.integer  "state"
    t.date     "establish_date"
    t.string   "manage_fee"
    t.string   "custody_fee"
    t.string   "subscribe_fee"
    t.string   "redeem_fee"
    t.string   "custody_bank"
    t.string   "expect_profit"
    t.text     "profit_desc"
    t.string   "raise_size"
    t.string   "init_capital"
    t.text     "recommend_reason"
    t.string   "investment"
    t.string   "repay_source"
    t.string   "financer"
    t.text     "financer_desc"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "hwm_resource_links", :force => true do |t|
    t.integer  "link_type",   :null => false
    t.integer  "source_type", :null => false
    t.string   "addr",        :null => false
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "hwm_resource_links", ["addr"], :name => "index_hwm_resource_links_on_addr", :unique => true

  create_table "hwm_resource_pics", :force => true do |t|
    t.integer  "source_type", :null => false
    t.string   "addr",        :null => false
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "hwm_resource_pics", ["addr"], :name => "index_hwm_resource_pics_on_addr", :unique => true

  create_table "hwm_studio_hwm_resource_links", :force => true do |t|
    t.integer  "hwm_studio_id"
    t.integer  "hwm_resource_link_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "hwm_studio_hwm_resource_pics", :force => true do |t|
    t.integer  "hwm_studio_id"
    t.integer  "hwm_resource_pic_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "hwm_studios", :force => true do |t|
    t.integer  "hwm_user_account_id", :null => false
    t.integer  "auth_type",           :null => false
    t.integer  "tag",                 :null => false
    t.string   "industry"
    t.string   "nature"
    t.string   "studioname",          :null => false
    t.string   "studio_intro"
    t.text     "studio_desc"
    t.string   "country",             :null => false
    t.string   "province",            :null => false
    t.string   "city",                :null => false
    t.string   "district",            :null => false
    t.text     "address",             :null => false
    t.string   "tel",                 :null => false
    t.string   "email"
    t.string   "fax"
    t.string   "corp_repr"
    t.string   "share_holder"
    t.integer  "employee_number"
    t.string   "reg_no"
    t.string   "reg_addr"
    t.date     "establish_date"
    t.date     "due_date"
    t.string   "organize_code"
    t.string   "tax_reg_cert"
    t.integer  "verify_state",        :null => false
    t.text     "verify_reason"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  add_index "hwm_studios", ["hwm_user_account_id"], :name => "index_hwm_studios_on_hwm_user_account_id", :unique => true
  add_index "hwm_studios", ["studioname"], :name => "index_hwm_studios_on_studioname", :unique => true

  create_table "hwm_user_account_hwm_labels", :force => true do |t|
    t.integer  "hwm_user_account_id"
    t.integer  "hwm_label_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "hwm_user_accounts", :force => true do |t|
    t.string   "nickname",      :null => false
    t.string   "realname"
    t.string   "certno"
    t.string   "certtype"
    t.string   "mobile",        :null => false
    t.string   "email"
    t.string   "encrypt_pwd",   :null => false
    t.integer  "hwm_studio_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "password"
  end

  add_index "hwm_user_accounts", ["mobile"], :name => "index_hwm_user_accounts_on_mobile", :unique => true
  add_index "hwm_user_accounts", ["nickname"], :name => "index_hwm_user_accounts_on_nickname", :unique => true

  create_table "hwm_user_detail_infos", :force => true do |t|
    t.integer  "hwm_user_account_id", :null => false
    t.string   "social_account"
    t.string   "recommender"
    t.integer  "recommender_type"
    t.date     "cert_valid_date"
    t.string   "nationality"
    t.string   "province"
    t.string   "city"
    t.string   "district"
    t.string   "address"
    t.string   "postcode"
    t.string   "tel"
    t.string   "fax"
    t.string   "interest"
    t.boolean  "sex"
    t.integer  "marriage"
    t.integer  "education"
    t.string   "workunit"
    t.integer  "occupation_code"
    t.float    "income"
    t.integer  "population"
    t.float    "asset"
    t.string   "application_number"
    t.date     "transaction_date"
    t.datetime "transaction_time"
    t.string   "transaction_account"
    t.integer  "transaction_channel"
    t.integer  "send_bill_choice"
    t.integer  "send_bill_type"
    t.string   "sail_code"
    t.string   "business_code"
    t.string   "network_code"
    t.integer  "custom_risk_level"
    t.text     "self_intro"
    t.text     "edu_background"
    t.text     "certificate"
    t.text     "work_intro"
    t.text     "case_intro"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  add_index "hwm_user_detail_infos", ["hwm_user_account_id"], :name => "index_hwm_user_detail_infos_on_hwm_user_account_id", :unique => true

  create_table "hwm_viewpoint_hwm_labels", :force => true do |t|
    t.integer  "hwm_viewpoint_id"
    t.integer  "hwm_label_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "hwm_viewpoints", :force => true do |t|
    t.integer  "hwm_user_account_id", :null => false
    t.text     "title",               :null => false
    t.text     "content",             :null => false
    t.integer  "viewtimes",           :null => false
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

end
