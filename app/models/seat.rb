class Seat < ActiveRecord::Base
  belongs_to :attendee, optional: true
  belongs_to :concert
end
