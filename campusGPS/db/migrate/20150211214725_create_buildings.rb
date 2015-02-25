class CreateBuildings < ActiveRecord::Migration
  def change
    create_table :buildings do |t|
      t.string :name
      t.string :description
      t.string :photo
      t.decimal :latitude
      t.decimal :longitude

      t.timestamps null: false
    end
  end
end
