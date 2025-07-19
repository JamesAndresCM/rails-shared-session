class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  before_action :log_warden_and_session

  private

  def log_warden_and_session
    Rails.logger.info "Session keys: #{session.keys}"
    Rails.logger.info "Session contents: #{session.to_hash}"
    Rails.logger.info "Warden user: #{warden.user.inspect}"
    Rails.logger.info "Warden user scope: #{warden.user(:user).inspect}"
  end
end
