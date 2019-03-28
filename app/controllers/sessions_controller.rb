class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(name: params[:session][:name])

    if user and user.authenticate params[:session][:password]
      # login success
      session[:user_id] = user.id
      redirect_to root_path
    else
      render 'new'
    end
  end
end
