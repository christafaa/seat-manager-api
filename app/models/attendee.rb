class Attendee < ActiveRecord::Base
  has_many :seats
end
