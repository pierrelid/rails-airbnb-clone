class My::ExperiencesController < ApplicationController
   before_action :user_signed_in?


    def index
      @experiences = current_user.experiences
      @reservations = []
      @experiences.each do |exeprience|
        @reservations << Reservation.where(experience_id: exeprience.id)
      end
    end

    def new
      @experience = Experience.new
    end

    def create
      @experience = Experience.new(experience_params)
      @experience.user = current_user
      if @experience.save
        redirect_to my_experiences_path
      else
        render :new
      end
    end


    private

    def not_authenticated
      redirect_to user_session_path, alert: "Please login first"
    end

    def experience_params
      params.require(:experience).permit(:name, :price, :participants_number_max, :photo, :description, :address)
    end
 end


