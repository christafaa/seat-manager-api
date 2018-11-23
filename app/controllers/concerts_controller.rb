class ConcertsController < ApplicationController

  def index
    render json: Concert.all
  end

  def show

  end
end
