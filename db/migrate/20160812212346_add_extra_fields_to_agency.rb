class AddExtraFieldsToAgency < ActiveRecord::Migration
  def change
    add_column :agencies, :email, :string
    add_column :agencies, :fax, :string
    add_column :agencies, :coverage, :string
  end
end
