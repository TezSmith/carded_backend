module Api
	module V1
    class UsersController < ApplicationController

      def create
       @user = User.new(name: params[:name], username: params[:username])
       render json: @user
      end

      def login
        @user = User.find_by(username: params[:username])
        render json: @user
      end

      def show
       @user = User.find_by(id)
       render json: @user
      end

    end
  end
end
