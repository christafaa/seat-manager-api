class AttendeeConcertSerializer < ActiveModel::Serializer
  attributes :id, :title, :date, :location
  has_many :attendees
end
