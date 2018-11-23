class AttendeeSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :seats
end
