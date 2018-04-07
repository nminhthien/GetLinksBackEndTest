class ApplicationController < ActionController::API
  include ExceptionHandler

  # called before every action on controllers
  before_action :authorize_request, except: [:render_404]
  attr_reader :current_user

  def render_404
    json_response({ message: Message.routing_error }, :not_found)
  end

  private

  # Check for valid request token and return user
  def authorize_request
    @current_user = (AuthorizeApiRequest.new(request.headers).call)[:user]
  end

  def json_response(object, status = :ok)
    render json: object, status: status
  end
end
