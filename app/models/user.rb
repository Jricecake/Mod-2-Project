class User < ApplicationRecord
    has_many :locations_users
    has_many :locations, through: :locations_users
    has_many :rooms, through: :locations
    has_many :plants, through: :rooms

    validates :name, presence: true
    validates :name, uniqueness: true
end
