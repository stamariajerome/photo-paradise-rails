class PagesController < ApplicationController
  def index
    @photos = Photo.all
  end
end
