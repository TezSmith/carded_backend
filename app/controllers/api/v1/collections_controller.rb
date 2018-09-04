module Api
	module V1
    class CollectionsController < ApplicationController

      def index
       @collections = Collection.all
			 render json: @collections
			end

    end
  end
end
