class LocationsRoom < ApplicationRecord
    belongs_to :room
    belongs_to :location
    has_many :plants_rooms

end