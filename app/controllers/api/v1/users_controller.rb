module Api
	module V1
    class UsersController < ApplicationController

      def index
       @users = User.all
			 render json: @users
			end

			def create
			  @user = User.new(user_params)
				 if @user.save
					 token = JsonWebToken.encode({ user_id: @user.id })
		       render json: { jwt: token, username: @user.username, bizcards: @user.bizcards, collections: @user.collections }, status: :created
				 else
           render json: { message: @user.errors.full_messages }, status: :not_found
				 end
      end


			def show
		   @user = User.find_by(params[:id])
		   render json: @user
		  end

			private

			def user_params
      	params.require(:user).permit(:name, :username, :password, :password_confirmation)
			end

    end
  end
end
