class Admin::MiscController < Admin::BaseController
	def search
		imdb_movie = Imdb::Search.new(params[:q])
		render json: imdb_movie.movies.as_json
	end
end