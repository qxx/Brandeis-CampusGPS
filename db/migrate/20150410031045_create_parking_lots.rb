class CreateParkingLots < ActiveRecord::Migration
  def change
    create_table :parking_lots do |t|
      t.string :name
      t.belongs_to :location, index: true
      t.string :photo

      t.timestamps null: false
    end
    add_foreign_key :parking_lots, :locations
  end
end
