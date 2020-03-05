class Location < ApplicationRecord
    has_many :locations_users
    has_many :rooms
    has_many :users, through: :locations_users

    def rooms_attributes=(rooms_attributes)
        rooms_attributes.values.each do |rooms_attributes|
            self.rooms.build(room_attributes)
        end
    end
end
