class ConcertSeatsSerializer < ActiveModel::Serializer
  attributes :id, :title, :date, :location
  has_many :seats
end
