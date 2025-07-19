module AuthEngine
  class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    # Si quieres usar helpers de devise en las vistas:
    helper_method :current_user, :user_signed_in?
  end
end
