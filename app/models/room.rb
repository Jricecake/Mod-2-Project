class Room < ApplicationRecord
    belongs_to :location, optional: true
    has_many :plants
    
end
