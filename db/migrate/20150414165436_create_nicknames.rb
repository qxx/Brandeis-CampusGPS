class CreateNicknames < ActiveRecord::Migration
  def change
    create_table :nicknames do |t|
      t.string :name
      t.integer :building_id

      t.timestamps null: false
    end
  end
end
