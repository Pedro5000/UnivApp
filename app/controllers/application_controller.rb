class ApplicationController < ActionController::Base
  before_action :require_user
  helper_method :current_user, :logged_in?

  def current_user
    @current_user ||= Student.find(session[:student_id]) if session[:student_id]
  end

  def logged_in?
    !!current_user
  end

  def require_user
    if !logged_in?
      flash[:notice] = "You must be logged in to perform that action"
      redirect_to login_path
    end
  end

  def already_logged_in
    session[:student_id]
  end

  def require_admin
    if current_user.status != 'admin'
      flash[:notice] = "You are not allowed to perform this action"
      redirect_to root_path
    end
  end

end
