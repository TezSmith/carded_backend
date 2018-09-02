module Api
	module V1
    class CollectionsController < ApplicationController

      def index
       @collections = Collection.all
			 render json: @collections
			end

      def create
       @collection = Collection.new(collection_name: params[:collection_name], user_id: params[:user_id])
			 @collection.save
			 render json: @collection
			end

    end
  end
end
