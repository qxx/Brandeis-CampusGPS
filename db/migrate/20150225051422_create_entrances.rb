class CreateEntrances < ActiveRecord::Migration
  def change
    create_table :entrances do |t|
      t.string :photo
      t.belongs_to :building, index: true

      t.timestamps null: false
    end
    add_foreign_key :entrances, :buildings
  end
end
