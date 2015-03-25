class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :code_name
      t.string :name
      t.string :doortag
      t.float :floorplan_x
      t.float :floorplan_y
      t.belongs_to :floor, index: true
      t.belongs_to :building, index: true
      t.belongs_to :location, index: true

      t.timestamps null: false
    end
    add_foreign_key :rooms, :floors
    add_foreign_key :rooms, :buildings
    add_foreign_key :rooms, :locations
  end
end
