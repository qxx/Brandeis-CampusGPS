class AddRouteConstructors < ActiveRecord::Migration
  def change
    create_table :route_constructors do |t|
      t.integer :route_id
      t.integer :path_id
      t.integer :path_order
      t.float :turning_direction 
      t.timestamps
    end
  end
end
