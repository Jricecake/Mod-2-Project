class PlantsRooms < ActiveRecord::Migration[6.0]
  def change
    create_table "plants_rooms" do |t|
      t.integer "plant_id", null: false
      t.integer "room_id", null: false
      t.string "nickname", optional: true
      t.boolean "watered?", optional: true
      t.timestamps
    end
  end
end

