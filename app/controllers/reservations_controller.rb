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
    if @reservation.save
      redirect_to experience_path(params[:experience_id])
    else
      render :new
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:experience_id, :participants_number, :start_at, :end_at)
  end

  def set_experience
    @experience = Experience.find(params[:experience_id])
  end
end
