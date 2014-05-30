module Api
  module V1
    class MoviesController < ApplicationController
      respond_to :json

      def index
        respond_with User.all
      end

      def show
        respond_with User.find(params[:id])
      end

      def create
        respond_with User.create(params[:User])
      end

      def update
        respond_with User.update(params[:id], params[:User])
      end

      def destroy
        respond_with User.destroy(params[:id])
      end
    end
  end
end
