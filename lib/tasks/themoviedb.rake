namespace :themoviedb do
  desc 'Sync Movies'
  task sync: :environment do
		Tmdb::Api.key(ENV['THEMOVIEDB_KEY'])
		Tmdb::Api.language("en")
  end
end