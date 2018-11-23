class ConcertSerializer < ActiveModel::Serializer
  attributes :id, :title, :date, :location
end
