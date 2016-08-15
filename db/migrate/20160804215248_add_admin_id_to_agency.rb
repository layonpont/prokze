class AddAdminIdToAgency < ActiveRecord::Migration
  def change
    add_column :agencies, :admin_id, :string
  end
end
