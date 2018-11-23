class Attendee < ActiveRecord::Base
  has_many :seats
  has_many :concerts, through: :seats
end
