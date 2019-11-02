module Secured
  extend ActiveSupport::Concern

  included do
    before_action :redirect_unless_logged_in_with_omniauth!
  end

  def redirect_unless_logged_in_with_omniauth!
    redirect_to root_path unless session[:userinfo].present?
  end
end