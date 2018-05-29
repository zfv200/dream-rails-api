module Api
  module V1
    class DreamsController < ApplicationController

      def index
        render json: Dream.includes(:user), include: ['user']
      end

      def create
        @dream = Dream.create(dream_params)
        if @dream
          render json: @dream
        else
          render json: { errors: @dream.errors.full_messages }
        end
      end

      private

      def dream_params
        params.require(:dream).permit(:user_id, :content, :collage)
      end

    end
  end
end
