class HomeController < ApplicationController
  caches_page :index if Rails.env.production?
	
	def index
		@featured_movies_1 = Movie.with_large_cover.limit(20)
		@featured_movies_2 = Movie.with_large_cover.where.not(id: @featured_movies_1.pluck(:id)).limit(19)
		@featured_movies_3 = Movie.with_large_cover.where.not(id: @featured_movies_1.pluck(:id)).where.not(id: @featured_movies_2.pluck(:id)).where.not(youtube: nil).limit(11)
		@featured_movies_4 = Movie.with_large_cover.where.not(id: @featured_movies_1.pluck(:id)).where.not(id: @featured_movies_2.pluck(:id)).where.not(id: @featured_movies_3.pluck(:id)).limit(15)
	end
end
