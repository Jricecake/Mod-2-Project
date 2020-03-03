class User < ApplicationRecord
    has_many :locations_users
    has_many :locations, through: :locations_users
end
