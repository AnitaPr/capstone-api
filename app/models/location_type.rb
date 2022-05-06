class LocationType < ApplicationRecord
validates :description, presence: true

  has_many :locations
end
