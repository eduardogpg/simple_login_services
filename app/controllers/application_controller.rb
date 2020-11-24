class ApplicationController < ActionController::Base

    helper_method :current_user
    helper_method :user_authenticated?

    def current_user
        User.find session[:user_id] if session[:user_id]
    end

    def user_authenticated?
        !current_user.nil?
    end

    def authorized!
        return redirect_to login_path unless user_authenticated?
    end

end
