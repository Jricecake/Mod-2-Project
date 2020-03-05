class PlantsRoom < ApplicationRecord
    belongs_to :plant
    belongs_to :room
    validates :description, presence: true

end