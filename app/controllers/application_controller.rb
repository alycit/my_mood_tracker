class ApplicationController < ActionController::Base

  helper_method :current_user
  helper_method :logged_in?
  helper_method :get_layout
  helper_method :choose_background

  def current_user
    session[:userinfo]
  end

  def logged_in?
    session[:userinfo].present?
  end

  def get_layout
    logged_in? ? "application" : "cover"
  end

  def choose_background
    [
      'https://www.socwall.com/images/wallpapers/37060-2048x1113.jpg',
      'http://getwallpapers.com/wallpaper/full/e/8/0/641454.jpg',
  ].sample
  end
end
