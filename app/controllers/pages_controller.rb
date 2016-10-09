class PagesController < ApplicationController
  def index
    # TODO change to AJAX
    if params[:search]
      @photos = Photo.search(params[:search])
      # TODO display no match found via AJAX
      @photos.empty? ? logger.ap('no match found') : @photos = Photo.search(params[:search])
    else
      @photos = Photo.all
    end
  end
end
