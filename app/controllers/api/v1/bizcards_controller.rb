module Api
	module V1
    class BizcardsController < ApplicationController

      def create
				@bizcard = Bizcard.new(card_name: params[:card_name], details: params[:details], user_id: params[:user_id])
				@bizcard.save
				render json: @bizcard
			end

			def show
        @bizcard = Bizcard.find(params[:id])
			end



    end
  end
end
