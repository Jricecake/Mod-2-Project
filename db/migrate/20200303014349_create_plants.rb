class CreatePlants < ActiveRecord::Migration[6.0]
  def change
    create_table :plants do |t|
      t.string :name
      t.string "description", optional: true
      t.string "water_status", optional: true
      t.timestamps
    end
  end
end
