module Api
	module V1
    class BizcardsController < ApplicationController

			def index
       @bizcards = Bizcard.all
			 render json: @bizcards
			end

      def create
				collection = Collection.find_or_create_by(collection_name: params[:collection_name], user_id: params[:user_id])

				@bizcard = Bizcard.new(bizcard_params)
				@bizcard.collection = collection
				# @bizcard.card_name = bizcard_params["card_name"]
				# @bizcard.line1 = bizcard_params["line1"]
				# @bizcard.line2 = bizcard_params["line2"]
				# @bizcard.line3 = bizcard_params["line3"]
				# @bizcard.line4 = bizcard_params["line4"]
				# @bizcard.line5 = bizcard_params["line5"]
				@bizcard.save
				render json: @bizcard
			end

			def show
        @bizcard = Bizcard.find(params[:id])
				render json: @bizcard
			end

			private

			def bizcard_params
      	params.require(:bizcard).permit(:card_name, :line1, :line2, :line3, :line4, :line5, :collection_name, :user_id)
			end



    end
  end
end
