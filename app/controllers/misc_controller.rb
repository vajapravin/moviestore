class MiscController < ApplicationController
	before_action :set_movie
	caches_page :movie_detail, :movie_watch, :movie_download if Rails.env.production?
		
	def movie_detail; end
	def movie_watch; end
	def movie_download; end

	private
	def set_movie
		@movie = Movie.find_by(imdbid: params[:imdbid])
		@relate_movies = @movie.find_related_tags.with_poster.where.not(id: @movie.id).limit(5)
	end
end