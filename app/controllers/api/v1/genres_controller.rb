module Api
  module V1
    class GenresController < ApplicationController
      respond_to :json

      def index
        respond_with Genre.all
      end

    end
  end
end
