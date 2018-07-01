User = Struct.new(:id, :is_templates_moderator)

class ApplicationController < ActionController::Base
  before_action :set_current_user
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def set_current_user
    @current_user ||= User.new(0, true)
  end

  def current_user
    @current_user
  end
end

