class MiscController < ApplicationController
	def movie_detail
		@movie = Movie.find(params[:id])
	end
end