class LocationsRoom < ApplicationRecord
    belongs_to :room
    belongs_to :location

end