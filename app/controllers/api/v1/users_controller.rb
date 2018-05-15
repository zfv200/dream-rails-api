module Api
  module V1
    class UsersController < ApplicationController

      def index
        render json: User.includes(:dreams), include: ['dreams']
      end

    end
  end
end
