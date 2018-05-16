module Api
  module V1
    class UsersController < ApplicationController

      def create
        @user = User.create(username: params["username"], password: params["password"])
        if @user
          render json: @user
        else
          render json: { errors: @user.errors.full_messages}
        end
      end

      def index
        render json: User.includes(:dreams), include: ['dreams']
      end

      def show
        @user = User.find(params[:id])
        render json: @user
      end

      private

      def user_params
        params.require(:user).permit(:username, :password)
      end

    end
  end
end
