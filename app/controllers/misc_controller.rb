class MiscController < ApplicationController
	before_action :set_movie
	caches_page :movie_detail if Rails.env.production?
		
	def movie_detail; end

	private
	def set_movie
		@movie = Movie.find_by(imdbid: params[:imdbid])
		@relate_movies = @movie.find_related_tags.with_poster.limit(5)
	end
end