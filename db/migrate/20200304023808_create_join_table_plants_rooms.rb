class CreateJoinTablePlantsRooms < ActiveRecord::Migration[6.0]
  def change
    create_join_table :plants, :rooms
  end
end
