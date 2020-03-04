class Room < ApplicationRecord
    belongs_to :location, optional: true
    has_many :plants_rooms
    has_many :plants, through: :plants_rooms
    
end
