module SessionsHelper
  def current_user
    @user ||= User.find(session[:user_id])
  end
  
  def longged_in?
    current_user.present?
  end
end
