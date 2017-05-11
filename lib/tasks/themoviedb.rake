namespace :themoviedb do
  desc 'Sync Movies'
  task sync: :environment do
		Tmdb::Api.key(ENV['THEMOVIEDB_KEY'])
		Tmdb::Api.language("en")
  	page = 34
  	loop do
      page, results, total_results, total_pages = fetch_movies(page.to_i)
      break if page == total_pages
    end
  end

  # Fetch movies from themoviedb
  def fetch_movies page
    ap "Sync Page => #{page+1}"
    resp = RestClient.get("#{THEMOVIEDB_HOST}/discover/movie?sort_by=popularity.desc&api_key=#{ENV['THEMOVIEDB_KEY']}&page=#{page+1}", {'Accept':'application/json', 'Content-Type':'application/json'})
    j_resp = JSON.parse(resp)
    if j_resp['total_results'].to_i > 0
      store_movies j_resp['results']
    end
    [j_resp['page'], j_resp['results'], j_resp['total_results'], j_resp['total_pages']]
  end

  # Store movies to database
  def store_movies results
    if results.count > 0
      results.each do |r|
        tmdb_movie = Tmdb::Movie.detail(r['id'])
        yts_movie tmdb_movie['imdb_id'].sub(/^tt/, '') if tmdb_movie['imdb_id']
  		end
  	end
  end

  # Search using YTS
  def yts_movie imdbid
  	movie = Movie.find_by!(imdbid: imdbid) rescue Movie.new
    ap "Movie - #{movie.imdbid}"
    # if movie.new_record?
      yts = YTS::Movie.list('json', {limit: 1, query_term: "tt#{imdbid}"})
      if yts['status'] && yts['data']['movie_count'] > 0
        begin
          yts['data']['movies'].each do |yts_m|
            movie.rating = yts_m['rating']
            movie.title_long = yts_m['title_long']
            movie.slug = yts_m['slug']
            movie.runtime = yts_m['runtime']
            movie.summary = yts_m['summary']
            movie.description_full = yts_m['description_full']
            movie.synopsis = yts_m['synopsis']
            movie.yt_trailer_code = yts_m['yt_trailer_code']
            movie.mpa_rating = yts_m['mpa_rating']
            movie.background_image = yts_m['background_image']
            movie.background_image_original = yts_m['background_image_original']
            movie.small_cover_image = yts_m['small_cover_image']
            movie.medium_cover_image = yts_m['medium_cover_image']
            movie.large_cover_image = yts_m['large_cover_image']
            movie.language = yts_m['language']
            movie.yts_url = yts_m['url']
            movie.imdbid = imdbid
            movie.name = yts_m['title']
            movie.released_year = yts_m['year']
            if movie.save
              ap movie.name, color: { string: :green }
            else
              ap "Errors: #{movie.errors.full_messages(', ')}"
            end
          end
        rescue Exception => e
          ap "#{movie.id} #{movie.name} #{movie.imdbid} - #{e.message}", color: { string: :red }
          puts
        end
      end
    # end
	end
end