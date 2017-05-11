namespace :yts do
  desc 'Sync Movies'
  task sync: :environment do
  	YTS::Movie.list('json', {})
  end
end