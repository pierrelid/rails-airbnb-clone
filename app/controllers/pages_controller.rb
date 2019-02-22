class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @experience = Experience.new
    @categories = Categorie.all
    @experiences = Experience.last(6)
    @reservations = Reservation.where(rating: 5)
  end
end
