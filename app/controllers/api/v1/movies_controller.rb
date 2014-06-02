module Api
  module V1
    class MoviesController < ApplicationController
      respond_to :json

      def index
        respond_with @movies = Movie.all
      end

      def show
        respond_with @movie = Movie.find(params[:id])
      end

      def create
        respond_with @movie = Movie.create(params[:Movie])
      end

      def update
        respond_with @movie = Movie.update(params[:id], params[:Movie])
      end

      def like_or_unlike
        like = Like.find_by({:user_id=>params[:user_id],:movie_id=>params[:id]})
        state = ""
        if like.nil?
          Like.create({:user=>User.find(params[:user_id]),:movie=>Movie.find(params[:id])})
          state = "like"
        else
          Like.find_by({:user_id=>params[:user_id],:movie_id=>params[:id]}).delete
          state = "un like"
        end
        response  = {:movie_id=>params[:id],:message=>state}
        respond_with response
      end

      def destroy
        respond_with Movie.destroy(params[:id])
      end
    end
  end
end
