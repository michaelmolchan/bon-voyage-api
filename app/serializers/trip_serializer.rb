class TripSerializer < ActiveModel::Serializer
  attributes :id, :city, :state, :country
end
