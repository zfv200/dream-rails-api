module Api
  module V1
    class CollagesController < ApplicationController

      def index
        render json: Collage.all
      end

      def create
        @collage = Collage.create(collage_params)
        if @collage
          render json: @collage
        else
          render json: { errors: @collage.errors.full_messages }
        end
      end

      private

      def collage_params
        params.require(:collage).permit(:dream_id, :image_url)
      end

    end
  end
end
