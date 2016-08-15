class CreateAgencies < ActiveRecord::Migration
  def change
    create_table :agencies do |t|
      t.string :name
      t.text :description
      t.string :phone
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :website

      t.timestamps null: false
    end
  end
end
