class Location < ApplicationRecord
  validates :name, presence: true
  validates :city, presence: true
  validates :state, presence: true

has_many :ratings
belongs_to :location_type
end
