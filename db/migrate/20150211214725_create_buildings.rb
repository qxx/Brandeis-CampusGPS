class CreateBuildings < ActiveRecord::Migration
  def change
    create_table :buildings do |t|
      t.string :code_name
      t.string :name
      t.string :description
      t.string :photo

      t.timestamps null: false
    end
  end
end
