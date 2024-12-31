class ApplicationController < ActionController::API
  before_action :authenticate_user!

  def users
    @users = User.all
    render json: UserSerializer.new(@users)
  end
end
