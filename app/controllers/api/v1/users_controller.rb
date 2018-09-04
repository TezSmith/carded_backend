module Api
	module V1
    class UsersController < ApplicationController

      def index
       @users = User.all
			 render json: @users
			end

      def create
       @user = User.create(name: params[:name], username: params[:username])
       render json: @user
      end

      def login
        @user = User.find_by(username: params[:username])
        render json: @user
      end

			def show
		   @user = User.find_by(params[:id])
		   render json: @user
		  end

    end
  end
end
