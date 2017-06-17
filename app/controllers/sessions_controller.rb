class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(name: params[:name]).try(:authenticate, params[:password])

    return render action: 'new' unless @user

    #logged in- hooray!
    session[:user_id] = @user.id
    Rails.logger.debug("============= #{session}")
    redirect_to dashboard_path
  end

end
