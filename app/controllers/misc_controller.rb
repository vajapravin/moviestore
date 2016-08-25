class MiscController < ApplicationController
	def movie_detail
		@movie = Movie.find_by(imdbid: params[:imdbid])
	end
end