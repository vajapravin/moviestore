namespace :themoviedb do
  desc 'Sync Movies'
  task sync: :environment do
		Tmdb::Api.key(ENV['THEMOVIEDB_KEY'])
		Tmdb::Api.language("en")
		RestClient.get("#{THEMOVIEDB_HOST}/discover/movie?sort_by=popularity.desc&api_key=1e1ac9371220b4353adae3eff23fe822&page=", headers={})
  	page = 1
  	loop do
  		page, results, total_results, total_pages = fetch_movies(page)
  		break if page == total_pages
  	end
  end

  # Fetch movies from themoviedb
  def fetch_movies page
  	resp = RestClient.get("#{THEMOVIEDB_HOST}/discover/movie?sort_by=popularity.desc&api_key=#{ENV['THEMOVIEDB_KEY']}&page=#{page}", {'Accept':'application/json', 'Content-Type':'application/json'})
  	if resp['total_results'].to_i > 0
  		page, results, total_results, total_pages = resp['page'], resp['results'], resp['total_results'], resp['total_pages']
  	end
  end

  # Store movies to database
  def store_movies results
  	if results > 0
  		results.each do |r|
  			tmdb_movie = Tmdb::Movie.detail(r['id'])
  			tmdb_movie = Tmdb::Movie.detail(381288)
  		end
  	end
  end

  # Search using YTS
  def yts_movie imdbid
  	movie = Movie.new
  	yts = YTS::Movie.list('json', {limit: 1, query_term: imdbid})
      if yts['status'] && yts['data']['movie_count'] > 0
        begin
          yts['data']['movies'].each do |yts_m|
          	movie.set_hash_value(yts_m.only(Movie.column_names.except('id')))
            movie.yts_url =, yts_m['url']
            movie.name =, yts_m['title']
            movie.released_year =, yts_m['year']
            movie.save
            ap movie
          end
        rescue Exception => e
          ap "#{movie.id} #{movie.name} #{movie.imdbid} - #{e.message}", color: { string: :red }
          puts
        end
      end
	end
end