class AddExtraFieldsToAdmin < ActiveRecord::Migration
  def change
    add_column :admins, :name, :string
    add_column :admins, :phone, :string
    add_column :admins, :position, :string
    add_column :admins, :description, :text
  end
end
