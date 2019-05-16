module Api
	module V1
    class UsersController < ApplicationController

			def login
				byebug
				@user = User.find_by(username: params[:user][:username])
				render json: @user
			end

      def index
       @users = User.all
			 render json: @users
			end

      def create
				#signup
       @user = User.new(user_params)
				 if @user.save
		       render json: @user, status: :created
				 else
           render json: @user.errors
				 end
      end


			def show
		   @user = User.find_by(params[:id])
		   render json: @user
		  end

			private

			def user_params
      	params.require(:user).permit(:name, :username, :password)
			end

    end
  end
end
