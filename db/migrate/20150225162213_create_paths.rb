class CreatePaths < ActiveRecord::Migration
  def change
    create_table :paths do |t|
      t.text :description
      t.float :distance
      t.integer :start_location_id
      t.integer :end_location_id
      t.float :direction
      t.string :photo

      t.timestamps null: false
    end
  end
end
