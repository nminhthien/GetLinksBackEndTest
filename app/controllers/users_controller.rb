class UsersController < ApplicationController
  skip_before_action :authorize_request, only: :create
  
  # POST /signup
  # return authenticated token upon signup
  api!
  api :POST, "/signup", "The signup API"
  def create
    user = User.create!(user_params)
    auth_token = AuthenticateUser.new(user.email, user.password).call
    response = { message: Message.account_created, auth_token: auth_token }
    json_response(response, :created)
  end

  private

  def user_params
    params.permit(
      :username,
      :email,
      :password,
      :password_confirmation,
      :first_name,
      :last_name,
      :gender
    )
  end
end
