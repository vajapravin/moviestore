namespace :dev do
  desc 'Sync Openload.io'
  task sync_openload: :environment do
    ol = OpenLoad.new
    [{"id": "1947989","name": "2016"},{"id": "1949823","name": "2013"},{"id": "1951490","name": "2011"},{"id": "1951492","name": "2006"},{"id": "1951498","name": "1996"},{"id": "1951500","name": "2015"},{"id": "1951768","name": "2014"},{"id": "1964632","name": "2012"}].each do |folder|
        results = ol.folder_list(folder['id']) # 2016

        results['result']['folders'].each do |f|
            movie_detail = ol.folder_list(f['id']) # 2016
            subtitle = nil
            movie = nil
            movie_detail['result']['files'].each do |file|
                if file['content_type'] == 'text/x-c'
                    subtitle = Subtitle.find_or_create_by(link: file['link'])
                elsif file['content_type'] == 'video/mp4'
                    movie = Movie.find_or_create_by(folderid: file['folderid'])
                    movie.name = file['name']
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
                    movie.released_year = folder['name']
                end
            end
            if movie
                movie.subtitle = subtitle
                movie.save
                ap "Move #{movie.name} Synced!"
            end
        end
    end
  end
end