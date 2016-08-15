class AddAdressToAgency < ActiveRecord::Migration
  def change
    add_column :agencies, :address, :string
  end
end
