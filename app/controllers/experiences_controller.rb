class ExperiencesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    if params[:query].present?
     @experiences = Experience.where(title: params[:query])
   else
     @experiences = Experience.all
   end
 end

  def show
    @experience = Experience.find(params[:id])
  end
end

