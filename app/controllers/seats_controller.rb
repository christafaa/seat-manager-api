class SeatsController < ApplicationController

  def index
    render json: Concert.find(params[:concert_id]), serializer: ConcertSeatsSerializer
  end
  
end
