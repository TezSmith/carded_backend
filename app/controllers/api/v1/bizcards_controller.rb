module Api
	module V1
    class BizcardsController < ApplicationController

			def index
       @bizcards = Bizcard.all
			 render json: @bizcards
			end

      def create
				collection = Collection.find_or_create_by(collection_name: params[:collection_name], user_id: params["user"]["id"])
				@bizcard = Bizcard.new(bizcard_params)
				@bizcard.collection = collection
				@bizcard.save
				render json: @bizcard
			end

			def show
        @bizcard = Bizcard.find(params[:id])
				render json: @bizcard
			end

			def destroy
        @bizcard = Bizcard.find(params['id'])
				@bizcard.destroy
			end

			private

			def bizcard_params
      	params.require(:bizcard).permit(:card_name, :line1, :line2, :line3, :line4, :line5, :collection_name, :user)
			end



    end
  end
end
