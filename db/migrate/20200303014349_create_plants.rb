class CreatePlants < ActiveRecord::Migration[6.0]
  def change
    create_table :plants do |t|
      t.string :name
      t.string "description", optional: true
      t.boolean "watered?", optional: true
      t.timestamps
    end
  end
end
