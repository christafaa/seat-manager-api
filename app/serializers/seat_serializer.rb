class SeatSerializer < ActiveModel::Serializer
  attributes :id, :number, :concert_id, :attendee_id
end
