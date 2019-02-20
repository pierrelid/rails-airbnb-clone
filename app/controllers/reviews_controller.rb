class ReviewsController < ApplicationController

  def new
    @review = Review.find(params[:review_id])
  end

  def create
    @review = Review.new(review_params)
    @review.reservation = @review
    @review.user = current_user
    if @review.save
      redirect_to review_path
    else
      render new
    end
  end

  private
  def review_params
    params.require(:review).permit(:reservation, :comment, :rating)
  end
end
