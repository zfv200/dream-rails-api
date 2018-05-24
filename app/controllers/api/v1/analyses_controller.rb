module Api
  module V1
    class AnalysesController < ApplicationController

      def index
        render json: Analysis.all
      end

      def create
        @analysis = Analysis.create(url: params["url"])
        if @analysis
          render json: @analysis
        else
          render json: { errors: @user.errors.full_messages }
        end
      end

      private

      # def analyses_params
      #   params.require(:analysis).permit(:user_id, :content, :collage)
      # end

    end
  end
end
