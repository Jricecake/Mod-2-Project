class Plant < ApplicationRecord
    has_many :plants_rooms
    has_many :rooms, through: :plants_rooms
    validates :description, presence: true
    validates :name, presence: true

    def location
        self.rooms.first.locations.first
    end
end
