class PagesController < ApplicationController
  def index
    if params[:search]
      @photos = Photo.search(params[:search])

      if @photos.empty?
        response = 'no match found'
      else
        response = Photo.search(params[:search])
      end

      if defined?(response)
        respond_to do |format|
          format.html
          format.json { render json: response }
        end
      end
    else
      @photos = Photo.all
    end
  end

  def destroy
    respond_to do |format|
      format.html
      format.js
    end
  end
end
