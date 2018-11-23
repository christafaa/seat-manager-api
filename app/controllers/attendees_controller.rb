class AttendeesController < ApplicationController

  def index
    render json: Concert.find(params[:concert_id]), serializer: ConcertAttendeesSerializer
  end

end
