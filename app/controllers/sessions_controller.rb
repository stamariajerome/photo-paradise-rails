class SessionsController < ApplicationController
  def new

  end

  def create

    find_user = User.find_by(email: params[:session][:email])

    if find_user.nil?
      flash[:danger] = "Incorect Email and Password"
      redirect_to login_path
    else
      logger.ap 'found user'
    end
  end
end
