class ExperiencesController < ApplicationController

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