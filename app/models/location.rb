class Location < ApplicationRecord
has_many :ratings
belongs_to :location_type
end
