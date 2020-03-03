class CreateUserLocations < ActiveRecord::Migration[6.0]
  def change
    create_join_table :users, :locations
  end
end
