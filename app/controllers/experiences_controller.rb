class ExperiencesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    if params[:search].present?
      @experiences = Experience.where(name: params[:search][:query])
    else
      @experiences = Experience.where.not(latitude: nil, longitude: nil)
    end
    @markers = @experiences.map do |experience|
      {
        lng: experience.longitude,
        lat: experience.latitude,
        infoWindow: render_to_string(partial: "infowindow", locals: { experience: experience })
      }
    end
  end

  def show
    @experience = Experience.find(params[:id])
    @reservations = Reservation.where(experience_id: @experience.id)
    @reservation = Reservation.new
  end
end
