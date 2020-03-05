class Room < ApplicationRecord
    has_many :locations_rooms
    has_many :locations, through: :locations_rooms
    has_many :plants_rooms
    has_many :plants, through: :plants_rooms


    validates :name, presence: true
end
