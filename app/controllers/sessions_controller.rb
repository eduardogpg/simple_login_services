class SessionsController < ApplicationController
  
  def new
  end

  def create
    @user = User.find_by username: params[:username]

    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id

      return redirect_to root_path
    end

    redirect_to login_path

  end

  def destroy
    session[:user_id] = nil

    redirect_to login_path
  end

end
