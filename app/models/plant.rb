class Plant < ApplicationRecord
    has_many :plants_rooms
    has_many :rooms, through: :plants_rooms
end
