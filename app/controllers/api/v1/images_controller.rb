module Api
  module V1
    class ImagesController < ApplicationController

      def index
        render json: Image.all
      end

      def create
        @image = Image.create(image_params)
        if @image
          render json: @image
        else
          render json: { errors: @image.errors.full_messages }
        end
      end

      private

      def image_params
        params.require(:image).permit(:image_data, :dream_id, :opacity, :width, :height, :opacity, :border_radius, :WebkitFilter, :left, :top, :z_index)
      end

    end
  end
end
