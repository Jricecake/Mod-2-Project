class PlantsRoom < ApplicationRecord
    belongs_to :plant
    belongs_to :room
    belongs_to :locations_room
    validates :description, presence: true

end