class CreatePaths < ActiveRecord::Migration
  def change
    create_table :paths do |t|
      t.text :description
      t.integer :distance
      t.integer :start_Location_id
      t.integer :end_Location_id
      t.integer :direction
      t.integer :PathPhotos_id

      t.timestamps null: false
    end
  end
end
