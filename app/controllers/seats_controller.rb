class SeatsController < ApplicationController

  def index
    render json: Concert.find(params[:concert_id]).seats
  end

  def update

  end
end
