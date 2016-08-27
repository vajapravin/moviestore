class HomeController < ApplicationController
	def index
		@featured_movies_1 = Movie.where.not(poster_file_name: nil).limit(10)
		@featured_movies_2 = Movie.where.not(poster_file_name: nil).where.not(id: @featured_movies_1.pluck(:id)).limit(20)
		@featured_movies_3 = Movie.where.not(poster_file_name: nil).where.not(id: @featured_movies_1.pluck(:id)).where.not(id: @featured_movies_2.pluck(:id)).where.not(youtube: nil).limit(20)
		@featured_movies_4 = Movie.where.not(poster_file_name: nil).where.not(id: @featured_movies_1.pluck(:id)).where.not(id: @featured_movies_2.pluck(:id)).where.not(id: @featured_movies_3.pluck(:id)).limit(10)
	end
end
