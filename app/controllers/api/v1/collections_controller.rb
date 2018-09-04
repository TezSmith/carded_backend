module Api
	module V1
    class CollectionsController < ApplicationController

      def index
       @collections = Collection.all
			 render json: @collections
			end

			def create
	     bizcard = Bizcard.find_by(params[:card_name])

       @collection = Collection.new(collections_params)
			 @collection.user.id = Collection.find_by(id: params["user"]["id"])
			 @collection.bizcard = bizcard
			 @collection.save
			end

			def show
        @collection = Collection.find(params[:id])
			end

			private

			def collections_params
        params.require(:collections).permit(:collection_name, :user)
			end

			# def bizcard_params
      # 	params.require(:bizcard).permit(:card_name, :line1, :line2, :line3, :line4, :line5, :collection_name, :user_id)
			# end

    end
  end
end
