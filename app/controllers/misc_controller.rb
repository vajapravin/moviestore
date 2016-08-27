class MiscController < ApplicationController
	caches_page :movie_detail if Rails.env.production?
	
	def movie_detail
		@movie = Movie.find_by(imdbid: params[:imdbid])
	end
end