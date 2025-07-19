class ApplicationController < ActionController::Base
#  skip_before_action :verify_authenticity_token

before_action :debug_session
  before_action :authenticate_user!


def debug_session
  Rails.logger.info "==== DEBUG SESSION ===="
  Rails.logger.info "Cookies: #{request.cookies.inspect}"
  Rails.logger.info "Session: #{session.to_hash.inspect}"
  Rails.logger.info "Warden user: #{warden.user.inspect}"
  Rails.logger.info "Warden user(:user): #{warden.user(:user).inspect}"
  Rails.logger.info "==== END DEBUG SESSION ===="
end
end
