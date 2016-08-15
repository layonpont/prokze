class CreateHospices < ActiveRecord::Migration
  def change
    create_table :hospices do |t|
      t.string :name
      t.string :username
      t.string :passcode

      t.timestamps null: false
    end
  end
end
