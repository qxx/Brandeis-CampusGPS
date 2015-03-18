class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :code_name
      t.decimal :latitude
      t.decimal :longitude
      t.string :loc_type

      t.timestamps null: false
    end
  end
end
