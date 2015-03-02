class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string :name
      t.string :hashed_password
      t.string :salt

      t.timestamps null: false
    end
  end
end
