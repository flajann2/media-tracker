module Api
  module V1
    class UserManagementController < Api::BaseController
      def show
        @user = User.find(params[:id])
      end

      def index
        @users = User.all
      end

      def add
      end

      def delete
      end

      def edit
      end
    end
  end
end
