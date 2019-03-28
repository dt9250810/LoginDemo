class PagesController < ApplicationController
  before_action :authenticate_user!, only: :about

  def homepage
    
  end

  def about

  end

  private
  def authenticate_user!
    flash[:danger] = '請先登入！'
    redirect_to root_path unless current_user
  end
end
