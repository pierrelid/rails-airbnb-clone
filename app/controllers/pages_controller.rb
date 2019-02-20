class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @experience = Experience.new
    @categories = Categorie.all
  end
end
