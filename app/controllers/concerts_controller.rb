class ConcertsController < ApplicationController
  protect_from_forgery prepend: true

  def index
    render json: Concert.all
  end

  def show
    render json: Concert.find(params[:id])
  end

  def update
    seat_ids = params[:concert][:seatIds]
    attendee_name = params[:concert][:attendeeName]
    attendee = Attendee.find_or_create_by(name: attendee_name)

    seat_ids.each {|id| Seat.update(id, attendee: attendee)}

    render json: Concert.find(params[:id]), serializer: ConcertSeatsSerializer
  end
end
