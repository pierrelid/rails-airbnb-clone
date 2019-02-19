class ExperiencesController < ApplicationController

  def index
    @experiences = Experience.all
  end

  # def new

  # end

  def show
    @experience = Experience.find(params[:id])
  end


end
