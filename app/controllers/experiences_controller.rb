class ExperiencesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
   #  if params[:query].present?
   #   @experiences = Experience.where(title: params[:query])
   # else
   #   @experiences = Experience.all
   # end
    @experiences = Experience.where.not(latitude: nil, longitude: nil)

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

