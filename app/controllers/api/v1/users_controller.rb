module Api
	module V1
    class UsersController < ApplicationController

      def index
       @users = User.all
			 render json: @users
			end

      def create
				# signup
       @user = User.find_or_create_by(username: params[:username])
			 @user.name = params[:name]
			 if @user.save
	       render json: @user
			 end
      end

      def login
        @user = User.find_by(username: params[:username])
        render json: @user
      end

			def show
		   @user = User.find_by(params[:id])
		   render json: @user
		  end

			def bizcards

			end

    end
  end
end
