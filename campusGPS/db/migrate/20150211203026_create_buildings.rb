class CreateBuildings < ActiveRecord::Migration
  def change
    create_table :buildings do |t|
      t.string :name
      t.string :description
      t.string :photo

      t.timestamps
    end
  end
end
