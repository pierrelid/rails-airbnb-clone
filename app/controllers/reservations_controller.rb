class ReservationsController < ApplicationController
  before_action :set_experience, only: [:new, :create]
  def index
    @reservations = Reservation.all
  end

  def new
    @reservation = Reservation.new
  end

  def show
    @reservation = Reservation.new(params[:id])
  end

  def create
    @reservation = @experience.reservations.new(reservation_params)
    @reservation.user = current_user
    if @reservation.save
      redirect_to reservations_path
    else
      render :new
    end
  end

  def price_to_pay
    @total_price = @experience.price * @experience.participants_number
  end

  private

  def reservation_params
    params.require(:reservation).permit(:experience_id, :participants_number, :start_at, :end_date)
  end

  def set_experience
    @experience = Experience.find(params[:experience_id])
  end
end
