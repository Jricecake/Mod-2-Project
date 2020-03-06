class CreateLocationsRooms < ActiveRecord::Migration[6.0]
  def change
    create_table "locations_rooms" do |t|
      t.integer "location_id", null: false
      t.integer "room_id", null: false
      t.integer "plants_room_id", optional: true
      t.timestamps
    end
  end
end

