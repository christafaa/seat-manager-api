class Concert < ActiveRecord::Base
  has_many :seats
  has_many :attendees, through: :seats
end
