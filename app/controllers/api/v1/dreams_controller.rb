module Api
  module V1
    class DreamsController < ApplicationController

      def index
        render json: Dream.includes(:user), include: ['user']
      end
    end
  end
end
