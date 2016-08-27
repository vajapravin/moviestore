class HomeController < ApplicationController
	def index
		@featured_movies_1 = Movie.where.not(poster_file_name: nil)
		@featured_movies_2 = Movie.where.not(poster_file_name: nil)
		@featured_movies_3 = Movie.where.not(poster_file_name: nil).where.not(youtube: nil)
		@featured_movies_4 = Movie.where.not(poster_file_name: nil)
	end
end
