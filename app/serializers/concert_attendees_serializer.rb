class ConcertAttendeesSerializer < ActiveModel::Serializer
  attributes :id, :title, :date, :location
  has_many :attendees
end
