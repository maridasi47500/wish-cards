class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :myaction 
  def myaction
    cookies.encrypted[:user_id]=current_user.try(:id)
  end
end
