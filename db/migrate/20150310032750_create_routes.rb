class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.integer :start_location_id
      t.integer :end_location_id
      t.float :distance

      t.timestamps null: false
    end
  end
end
