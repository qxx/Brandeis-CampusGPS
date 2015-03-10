class AddPathBuildingsTable < ActiveRecord::Migration
  def change
    create_table :path_buildings do |t|
      t.integer :path_id 
      t.integer :building_id 
      t.timestamps
    end
  end
end
