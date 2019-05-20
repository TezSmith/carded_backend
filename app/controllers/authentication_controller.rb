class AuthenticationController < ApplicationController
  def create
    @user = User.find_by(username: params[:user][:username])
    if @user && @user.authenticate(params[:user][:password])
       token = JsonWebToken.encode({ user_id: @user.id })
       if token.present?
         render json: { jwt: token, username: @user.username, bizcards: @user.bizcards, collections: @user.collections }, status: :ok
       else
         render json: { message: 'Login failed. Please try again.' }
       end
    else
     render json: { message: 'Login Unsuccessful'}, status: :unauthorized
    end
 end

end
