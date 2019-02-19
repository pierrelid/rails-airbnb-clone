class ReviewsController < ApplicationController
  before_action :set_reservation, only: [:new, :create]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.reservation = @review
    @reservation.user = current_user
    if @review.save
      redirect_to reservation_path(params[:reservation_id])
    else
      render new
    end
  end

  private

  def set_reservation
    @reservation = Reservation.find(params[:reservation_id])
  end

  def review_params
    params.require(:review).permit(:reservation_id, :comment)
  end
end

