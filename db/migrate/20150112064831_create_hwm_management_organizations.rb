class CreateHwmManagementOrganizations < ActiveRecord::Migration
  def change
    create_table :hwm_management_organizations do |t|
      t.string :cnname, :null=>false
      t.string :enname
      t.string :short_name
      t.string :capital
      t.string :legal_repr
      t.string :nature
      t.date :found_date
      t.string :invest_field
      t.text :desc

      t.timestamps
    end
  end
end
