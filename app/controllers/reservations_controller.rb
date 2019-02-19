class ReservationsController < ApplicationController

  def index
    @reservations = Reservation.all
  end

  def show
    @reservations = Reservation.new(params[:id])
  end

  def create
    @reservation = Reservation.new
    @reservation.save
  end


end
