class AuthenticationController < ApplicationController
  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
         token = JsonWebToken.encode({id: @user.id, username: @user.username, bizcards: @user.bizcards, collections: @user.collections })
      render json: { jwt: token }, status: :ok
    else
     render json: {error: 'Login Unsuccessful,'} status: :unauthorized
    end
 end

end
