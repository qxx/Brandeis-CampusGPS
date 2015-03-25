class CreateFloors < ActiveRecord::Migration
  def change
    create_table :floors do |t|
      t.string :code_name
      t.string :level
      t.string :floorplan
      t.belongs_to :building, index: true

      t.timestamps null: false
    end
    add_foreign_key :floors, :buildings
  end
end
