class PagesController < ApplicationController
  def home
    @experience = Experience.new
    @categories = Categorie.all
  end
end
