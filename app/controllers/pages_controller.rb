class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @experience = Experience.new
    @categories = Categorie.all
  end
end
