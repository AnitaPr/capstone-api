class LocationSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :city, :state, :location_type_id, :image
  has_many :ratings
  belongs_to :location_type
end
