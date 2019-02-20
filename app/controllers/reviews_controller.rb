class ReviewsController < ApplicationController
  def new
    @reservation = Reservation.find(params[:reservation_id])
  end

  def create
    @reservation = Reservation.find(params[:reservation_id])

    if @reservation.update(review_params)
      redirect_to reservations_path
    else
      render :new
    end
  end

private
  def review_params
    params.require(:reservation).permit(:review, :rating)
  end
end
