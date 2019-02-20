class ExperiencesController < ApplicationController

  def index
   #  if params[:query].present?
   #   @experiences = Experience.where(title: params[:query])
   # else
     @experiences = Experience.all
   # end
    # @experiences = Experience.where.not(latitude: nil, longitude: nil)

    @markers = @experiences.map do |experience|
      {
        lng: experience.longitude,
        lat: experience.latitude
      }
    end
  end

  # def new

  # end

  def show
    @experience = Experience.find(params[:id])
  end


  # private

  # def experience_params
  #   params.require(:experience).permit(:name, :description, :photo, :price)
  # end
end
