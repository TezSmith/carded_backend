module Api
	module V1
		class BizcardsController < ApplicationController
			before_action :authorize!, only: [:create]

			def index
       @bizcards = Bizcard.all
			 render json: @bizcards
			end

			def create
				@bizcard = Bizcard.new
				@bizcard.card_name = params[:bizcard][:card_name]
				@bizcard.line1 = params[:bizcard][:line1]
				@bizcard.line2 = params[:bizcard][:line2]
				@bizcard.line3 = params[:bizcard][:line3]
				@bizcard.line4 = params[:bizcard][:line4]
				@bizcard.line5 = params[:bizcard][:line5]
				if @bizcard.save
			  	collection = Collection.find_or_create_by(collection_name: params[:bizcard][:collection_name], user_id: @current_user.id, bizcard_id: @bizcard.id)
					 render json: { card: @bizcard }, status: :created
				else 
					render json: { error: @bizcard.errors.full_messages }, status: :unproccessed
				end
			end

			def show
        @bizcard = Bizcard.find(params[:id])
				render json: @bizcard
			end

			def destroy
				byebug
        @bizcard = Bizcard.find(params['id'])
				@bizcard.destroy
				render json: { success: 'Your card has been deleted', card: @bizcard}, status: :ok
			end

			private

			def bizcard_params
      	params.require(:bizcard).permit(:card_name, :line1, :line2, :line3, :line4, :line5, :collection_name)
			end



    end
  end
end
