class CreateProfessionals < ActiveRecord::Migration
  def change
    create_table :professionals do |t|
      t.string :name
      t.string :title
      t.string :phone
      t.string :email

      t.timestamps null: false
    end
  end
end
