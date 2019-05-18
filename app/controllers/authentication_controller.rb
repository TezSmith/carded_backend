class AuthenticationController < ApplicationController
  def create
    @user = User.find_by(username: params[:user][:username])
    if @user && @user.authenticate(params[:user][:password])
       token = JsonWebToken.encode({ user_id: @user.id })
       render json: { jwt: token, username: @user.username, bizcards: @user.bizcards, collections: @user.collections }, status: :ok
    else
     render json: { error: 'Login Unsuccessful,'}, status: :unauthorized
    end
 end

end
