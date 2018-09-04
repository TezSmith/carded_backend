module Api
	module V1
    class CollectionsController < ApplicationController

      def index
       @collections = Collection.all
			 render json: @collections
			end

			# def create
	    #  bizcard = Bizcard.find_by(params[:card_name])
			#
      #  @collection = Collection.new(collections_params)
			#  @collection.user.id = Collection.find_by(id: params["user"]["id"])
			#  @collection.bizcard = bizcard
			#  @collection.save
			# end

			def show
        @collection = Collection.find_by(collection_name: params[:collection_name])
			end

			private

			def collections_params
        params.require(:collections).permit(:collection_name, :user)
			end

    end
  end
end
