class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.string :name
      t.boolean :window?
      t.string :window_facing
      t.integer :location_id

      t.timestamps
    end
  end
end
