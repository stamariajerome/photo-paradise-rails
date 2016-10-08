class PhotosController < ApplicationController
  before_action :prepare_photo, except: [:new, :create]

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)

    # TODO DRY
    root_path_page = redirect_to new_photo_path

    # TODO append to current user
    @photo.user_id = 1;

    if @photo.save
      flash[:success] = 'Picture has been successfuly added'
      root_path_page
    else
      logger.ap @photo.errors.full_messages
      flash[:danger] = 'There was something wrong adding the photo'
      root_path_page
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def photo_params
    params.require(:photo).permit(:title, :description, :url)
  end

  def prepare_photo
    @photo = Photo.find(params[:id])
  end
end
