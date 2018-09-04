module Api
	module V1
    class CollectionsController < ApplicationController

      def index
       @collections = Collection.all
			 render json: @collections
			end

			# create action for collections
			def create
       @collection = Collection.new(collections_params)
			 @collection.save
			end

			private

			def collections_params
        params.require(:collections).permit(:collection_name, :user_id)
			end

    end
  end
end
