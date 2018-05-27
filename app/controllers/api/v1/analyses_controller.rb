module Api
  module V1
    class AnalysesController < ApplicationController

      def index
        render json: Analysis.all
      end

      def create
        byebug
        @analysis = Analysis.create(analyses_params)
        if @analysis
          render json: @analysis
        else
          render json: { errors: @user.errors.full_messages }
        end
      end

      private

      def analyses_params
        params.require(:analysis).permit(:url, :dream_id, :name)
      end

    end
  end
end
