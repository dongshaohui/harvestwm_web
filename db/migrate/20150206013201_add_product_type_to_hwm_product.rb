# 在产品表中新增产品类别
class AddProductTypeToHwmProduct < ActiveRecord::Migration
  def change
    add_column :hwm_products, :hwm_product_type_id, :integer
  end
end
