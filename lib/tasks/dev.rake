namespace :dev do
  desc 'Home page slider movies'
  task home_slider: :environment do
    HomeSlider.destroy_all
    # Guardians.of.the.Galaxy.2014.1080p.BluRay.x264.YIFY.mp4
    HomeSlider.create(movie: Movie.find_by(sha1: 'f8aa98ff0a993b76c4e0a92b2c9b5be9f147b0a7'))
    # London.Has.Fallen.2016.HDRip.KORSUB.x264-STUTTERSHIT.mp4
    HomeSlider.create(movie: Movie.find_by(sha1: '91441a72bade4f48f57d2a3285877df141d1b377'))
    # Batman.v.Superman.Dawn.of.Justice.2016.EXTENDED.720p.BluRay.H264.AAC-RARBG.mp4
    HomeSlider.create(movie: Movie.find_by(sha1: 'b89ca2ce07fadcf535db0eff55b3af0f22bb461b'))
  end

  desc 'Home page featured movies'
  task featured: :environment do
    FeaturedMovie.destroy_all
    # Guardians.of.the.Galaxy.2014.1080p.BluRay.x264.YIFY.mp4
    FeaturedMovie.create(movie: Movie.find_by(sha1: '7a4d696b90814fa3c8286cf9b05574c303ecc6e7'))
    # London.Has.Fallen.2016.HDRip.KORSUB.x264-STUTTERSHIT.mp4
    FeaturedMovie.create(movie: Movie.find_by(sha1: 'd3419791b55d59babdeb326c45fdeb53d92b0d8c'))
    # Batman.v.Superman.Dawn.of.Justice.2016.EXTENDED.720p.BluRay.H264.AAC-RARBG.mp4
    FeaturedMovie.create(movie: Movie.find_by(sha1: 'c9c2d808fc855effd837afb6449a112af4c75ea4'))
  end

  desc 'Sync Openload.io'
  task sync_openload: :environment do
    ol = OpenLoad.new
    [{"id": "1947989","name": "2016"},{"id": "1949823","name": "2013"},{"id": "1951490","name": "2011"},{"id": "1951492","name": "2006"},{"id": "1951498","name": "1996"},{"id": "1951500","name": "2015"},{"id": "1951768","name": "2014"},{"id": "1964632","name": "2012"}].each do |folder|
      results = ol.folder_list(folder[:id]) # 2016
      results['result']['folders'].each do |f|
        movie_detail = ol.folder_list(f['id']) # 2016
        subtitle = nil
        movie = nil
        movie_detail['result']['files'].each do |file|
          if file['content_type'] == 'text/x-c'
            subtitle = Subtitle.find_or_create_by(link: file['link'])
          elsif file['content_type'] == 'video/mp4'
            movie = Movie.find_or_create_by(folderid: file['folderid'])
            movie.name = file['name'] if movie.new_record?
            movie.file_name = file['name']
            movie.sha1 = file['sha1']
            movie.folderid = file['folderid']
            movie.upload_at = file['upload_at']
            movie.status = file['status']
            movie.size = file['size']
            movie.content_type = file['content_type']
            movie.download_count = file['download_count']
            movie.cstatus = file['cstatus']
            movie.link = file['link']
            movie.linkextid = file['linkextid']
            movie.released_year = folder[:name]
          end
        end
        if movie
          movie.subtitle = subtitle
          movie.save
          if movie_detail['result']['folders'].size > 0 && movie_detail['result']['folders'][0]['name'] == 'banners'
            fetch_banners(movie, movie_detail['result']['folders'][0]['id'], ol)
          end
          ap "Movie #{movie.name} Synced!"
        end
      end
    end
  end

  def fetch_banners movie, folderid, ol
    banner_results = ol.folder_list(folderid)
    banner_results['result']['files'].each do |banner_file|
      if banner_file['content_type'] == 'image/jpeg'
        banner_download_ticket = ol.download_ticket(banner_file['linkextid'])
        unless banner_download_ticket['result']['captcha_url']
          banner_link = ol.download_link(banner_file['linkextid'], banner_download_ticket['result']['ticket'])
          banner = movie.banners.find_or_initialize_by(sha: banner_link['result']['sha1'])
          banner.image = open(banner_link['result']['url'])
          if banner.save
            ap "Found banner image #{movie.name} -> #{banner_link['result']['name']}"
          else
            ap banner.errors.full_messages.join(", ")
          end
        end
      end
    end
  end
end