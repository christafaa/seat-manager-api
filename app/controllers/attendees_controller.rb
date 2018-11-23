class AttendeesController

  def index
    render json: Concert.find(params[:concert_id]).attendees
  end

end
