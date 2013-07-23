class ApplicationController < ActionController::Base
  before_filter :authenticate

  protected

  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == "sup" && password == "hola"
    end
  end

  protect_from_forgery
end
