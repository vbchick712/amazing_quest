class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user

  def current_user
  	@current_user ||=User.find_by(id: session[:user_id])
  end

#we need to add code to require log in on the correct pages

  def require_logged_in
  	return true if current_user 

  	return redirect_to root_path

  end
end
