class Rating < ApplicationRecord
validates :rating, presence: true

belongs_to :location
belongs_to :user
end
