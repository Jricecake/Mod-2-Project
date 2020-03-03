class Location < ApplicationRecord
    has_many :locations_users
    has_many :rooms
    has_many :users, through: :locations_users
end
