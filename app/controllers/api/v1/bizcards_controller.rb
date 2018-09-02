module Api
	module V1
    class BizcardsController < ApplicationController

			def index
       @bizcards = Bizcard.all
			 render json: @bizcards 
			end

      def create
				@bizcard = Bizcard.new(card_name: params[:card_name], line1: params[:line1], line2: params[:line2], line3: params[:line3], line4: params[:line4], line5: params[:line5], collection_id: params[:collection_id])
				@bizcard.save
				render json: @bizcard
			end

			def show
        @bizcard = Bizcard.find(params[:id])
				render json: @bizcard
			end



    end
  end
end
